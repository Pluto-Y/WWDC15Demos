//
//  ViewController.m
//  WWDC15AutoLayoutMysteries
//
//  Created by Pluto Y on 15/10/7.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "ViewController.h"
#import "SelfSizingCellController.h"
#import "PriorityDemoController.h"
#import "AlignmentDemoController.h"
#import "LayoutGuideDemoController.h"
#import "LayoutDebugController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *kTopConstraint;
@property (weak, nonatomic) IBOutlet UIStackView *kStackView;

@property (retain, nonatomic) NSLayoutConstraint *kBottomConstraint;
@property (retain, nonatomic) NSMutableArray<NSLayoutConstraint *> *topConstrains;
@property (retain, nonatomic) NSMutableArray<NSLayoutConstraint *> *bottomConstrains;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _kTopConstraint.identifier = @"statckViewTopMargin";
    _kBottomConstraint = [_kStackView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20];
    _kBottomConstraint.identifier = @"statckViewBottomMargin";
    _topConstrains = [NSMutableArray arrayWithObjects:_kTopConstraint, nil];
    _bottomConstrains = [NSMutableArray arrayWithObjects:_kBottomConstraint, nil];
}

/// self.view的点击事件
-(IBAction)kViewClick:(id)sender {
    if ([_bottomConstrains.firstObject isActive]) {
        [UIView animateWithDuration:3 animations:^{
            [NSLayoutConstraint deactivateConstraints:_bottomConstrains];
            [NSLayoutConstraint activateConstraints:_topConstrains];
            [self.view layoutIfNeeded];
        }];
    } else {
        [UIView animateWithDuration:3 animations:^{
            [NSLayoutConstraint deactivateConstraints:_topConstrains];
            [NSLayoutConstraint activateConstraints:_bottomConstrains];
            [self.view layoutIfNeeded];
        }];
    }
}

-(IBAction)gotoSelfSizingCellController:(id)sender {
    SelfSizingCellController *controller = [[SelfSizingCellController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)gotoPriorityDemoController:(id)sender {
    PriorityDemoController *controller = [[PriorityDemoController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)gotoAlignmentDemoControll:(id)sender {
    AlignmentDemoController *controller = [[AlignmentDemoController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)gotoLayoutGuideDemoControll:(id)sender {
    LayoutGuideDemoController *controller = [[LayoutGuideDemoController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

-(IBAction)gotoLayoutDebugDemoControll:(id)sender {
    LayoutDebugController *controller = [[LayoutDebugController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
