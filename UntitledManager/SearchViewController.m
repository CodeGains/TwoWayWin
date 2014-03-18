//
//  FirstViewController.m
//  TwoWayWin
//
//  Created by Troy Jaeger on 3/4/14.
//  Copyright (c) 2014 Troy Jaeger. All rights reserved.
//

#import "SearchViewController.h"
#import "Item.h"
#import "ItemCell.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

@synthesize tableView;
@synthesize searchBar;
@synthesize items;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *uniqueIdentifier = @"itemCell";
    ItemCell  *cell = nil;
    cell = (ItemCell *) [self.tableView dequeueReusableCellWithIdentifier:uniqueIdentifier];
    Item *item = [self.items objectAtIndex:[indexPath row]];
    
    if(!cell)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"ItemCell" owner:nil options:nil];
        for(id currentObject in topLevelObjects)
        {
            if([currentObject isKindOfClass:[ItemCell class]])
            {
                cell = (ItemCell *)currentObject;
                break;
            }
        }
    }
    
    cell.title.text = item.title;
    
    UIImage *image = [UIImage imageWithContentsOfFile:@"first.png"];
    
    [cell.thumbnail setImage:image];
    
    cell.item = item;
    
    return cell;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tabBarItem = [self tabBarItem];
        self.title = NSLocalizedString(@"Search", @"Search");
        UIImage *tabBarImage = [UIImage imageNamed:@"search_icon.png"];
        [tabBarItem setImage:tabBarImage];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchForItems:(NSString *) searchText
{
    items = nil;
    items = [[NSMutableArray alloc] initWithObjects: nil];
    
    for (int i = 0; i < 10; i++) {
        Item *item = [[Item alloc] init];
        
        item.title = searchText;
        
        [[self items] addObject:item];
    
    }
    
    [tableView reloadData];
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    [self.searchBar setShowsCancelButton:YES animated:YES];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    self.searchBar.text=@"";
    
    [self.searchBar setShowsCancelButton:NO animated:YES];
    [self.searchBar resignFirstResponder];
    
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    currentSearch = self.searchBar.text;
    [self.searchBar resignFirstResponder];
    [self searchForItems:currentSearch];
    [tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.items count];
}
@end
