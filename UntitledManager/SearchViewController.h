//
//  FirstViewController.h
//  TwoWayWin
//
//  Created by Troy Jaeger on 3/4/14.
//  Copyright (c) 2014 Troy Jaeger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,
UISearchBarDelegate>
{
    NSUserDefaults *defaults;
    NSString *currentSearch;
}

@property(nonatomic, strong) IBOutlet UITableView *tableView;
@property(nonatomic, strong) IBOutlet UISearchBar *searchBar;
@property(nonatomic, retain) NSMutableArray* items;

@end
