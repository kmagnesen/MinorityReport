//
//  ViewController.m
//  MinorityReport
//
//  Created by Kyle Magnesen on 1/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) IBOutlet UILabel *theFutureLabel;
@property (strong, nonatomic) IBOutlet UILabel *thePrecogsLabel;
@property CGPoint originalCenter;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.originalCenter = self.theFutureLabel.center;
}

- (IBAction)onDrag:(UIPanGestureRecognizer *)sender {
    
    CGPoint point = [sender locationInView:self.view];
    self.theFutureLabel.center = point;
//    NSLog(@"%f %f", point.x, point.y);

    if (CGRectContainsPoint(self.thePrecogsLabel.frame, point)) {

        self.theFutureLabel.text = @"A Ficticious and Incriminating Future";

        [self.theFutureLabel sizeToFit];
    }

    if (sender.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:1.0f animations:^{
            self.theFutureLabel.center = self.originalCenter;
        }];
    }
}

@end
