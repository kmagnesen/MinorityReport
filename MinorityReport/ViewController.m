//
//  ViewController.m
//  MinorityReport
//
//  Created by Kyle Magnesen on 1/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *theFutureLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
}

- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {

}

@end
