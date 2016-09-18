//
//  ViewController.m
//  test9
//
//  Created by sander on 17.09.16.
//  Copyright © 2016 Flagstone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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


@end
