//
//  LayoutGuideDemoController.m
//  WWDC15AutoLayoutMysteries
//
//  Created by Pluto Y on 15/10/12.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "LayoutGuideDemoController.h"

@interface LayoutGuideDemoController ()

@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;

@end

@implementation LayoutGuideDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILayoutGuide *space1 = [[UILayoutGuide alloc] init];
    [self.view addLayoutGuide:space1];
    
    UILayoutGuide *space2 = [[UILayoutGuide alloc] init];
    [self.view addLayoutGuide:space2];
    
    [space1.widthAnchor constraintEqualToAnchor:space2.widthAnchor].active = YES;
    [self.saveButton.trailingAnchor constraintEqualToAnchor:space1.leadingAnchor].active = YES;
    [self.cancelButton.leadingAnchor constraintEqualToAnchor:space1.trailingAnchor].active = YES;
    [self.cancelButton.trailingAnchor constraintEqualToAnchor:space2.leadingAnchor].active = YES;
    [self.clearButton.leadingAnchor constraintEqualToAnchor:space2.trailingAnchor].active = YES;
}


@end
