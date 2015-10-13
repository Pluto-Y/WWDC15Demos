//
//  SelfSizingCellController.m
//  WWDC15AutoLayoutMysteries
//
//  Created by Pluto Y on 15/10/7.
//  Copyright © 2015年 pluto-y. All rights reserved.
//

#import "SelfSizingCellController.h"
#import "SelfSizingCell.h"

@interface SelfSizingCellController () {
    NSMutableArray *datas;
}

@end

@implementation SelfSizingCellController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initAll];
}

-(void)initAll {
    _kTableView.delegate = self;
    _kTableView.dataSource = self;
    _kTableView.estimatedRowHeight = 60;
    _kTableView.rowHeight = UITableViewAutomaticDimension;
    datas = [NSMutableArray arrayWithObjects:@"This is Mysteries of Auto Layout.", @"This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.", @"This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.", @"This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.", @"This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.This is Mysteries of Auto Layout.", nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SelfSizingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelfSizingCell"];
    if (cell == nil) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"SelfSizingCell" owner:self options:nil];
        cell = arr.firstObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (indexPath.row % 2 ==0) {
        cell.kImage.image = [UIImage imageNamed:@"3"];
    } else {
        cell.kImage.image = [UIImage imageNamed:@"4"];
    }
    cell.kLabel.text = datas[indexPath.row];
    return cell;
}

@end
