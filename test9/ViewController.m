//
//  ViewController.m
//  test9
//
//  Created by sander on 17.09.16.
//  Copyright © 2016 Flagstone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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
