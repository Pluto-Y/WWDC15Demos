//
//  SelfSizingCellController.h
//  WWDC15AutoLayoutMysteries
//
//  Created by Pluto Y on 15/10/7.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelfSizingCellController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *kTableView;

@end
