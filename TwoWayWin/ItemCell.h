//
//  ItemCell.h
//  TwoWayWin
//
//  Created by Troy Jaeger on 3/4/14.
//  Copyright (c) 2014 Troy Jaeger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface ItemCell : UITableViewCell

@property(nonatomic, strong) IBOutlet UILabel* title;
@property(nonatomic, strong) IBOutlet UILabel* test;
@property(nonatomic, strong) IBOutlet UIImageView* thumbnail;

@property(nonatomic, retain) Item *item;

@end
