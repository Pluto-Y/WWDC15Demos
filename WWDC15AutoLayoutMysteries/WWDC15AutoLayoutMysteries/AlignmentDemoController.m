//
//  AlignmentDemoController.m
//  WWDC15AutoLayoutMysteries
//
//  Created by Pluto Y on 15/10/11.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "AlignmentDemoController.h"

@interface AlignmentDemoController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *kBaseLineContraint;
@property (weak, nonatomic) IBOutlet UILabel *kBaseLineLabel;
@property (weak, nonatomic) IBOutlet UIButton *kBaseLineBtn;

@end

@implementation AlignmentDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSLayoutConstraint deactivateConstraints:@[_kBaseLineContraint]];

    NSLayoutConstraint *kContrains = [_kBaseLineLabel.lastBaselineAnchor constraintEqualToAnchor:_kBaseLineBtn.lastBaselineAnchor];
    [NSLayoutConstraint activateConstraints:@[kContrains]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:btn];
    NSLayoutConstraint *kTopContraints = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:10];
    NSLayoutConstraint *kLeadingContraints = [NSLayoutConstraint constraintWithItem:btn attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:10];
    [NSLayoutConstraint activateConstraints:@[kTopContraints, kLeadingContraints]];
}


@end
