//
//  ViewController.m
//  test9
//
//  Created by sander on 17.09.16.
//  Copyright © 2016 Flagstone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)hide {
   UIView *v =[self.view viewWithTag:232];
  v.hidden = !v.hidden;
}

- (IBAction)pop:(UIBarButtonItem *)sender {
  UIViewController *vc = [[UIViewController alloc] init];

  vc.view.backgroundColor = [UIColor greenColor];
  vc.modalPresentationStyle = UIModalPresentationPopover;
  UIPopoverPresentationController *pop = vc.popoverPresentationController;
  pop.barButtonItem = self.navigationItem.leftBarButtonItem;
  vc.preferredContentSize = CGSizeMake(220, 40);
  pop.delegate = self;
  [self presentViewController:vc animated:YES completion:nil];
}

- (UIViewController *)presentationController:(UIPresentationController *)controller viewControllerForAdaptivePresentationStyle:(UIModalPresentationStyle)style {
  UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller.presentedViewController];
  return nav;
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
  return UIModalPresentationNone;
}

#pragma helper
- (NSDateFormatter *)dateFormatter {
  if( !_dateFormatter ) {
    _dateFormatter = [[NSDateFormatter alloc] init];
    NSString *dateFormat = [NSDateFormatter dateFormatFromTemplate:@"h:mm a" options:0 locale:[NSLocale currentLocale]];
    _dateFormatter.dateFormat = dateFormat;
  }
  return _dateFormatter;
}

@end
