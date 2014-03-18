//
//  AppDelegate.m
//  TwoWayWin
//
//  Created by Troy Jaeger on 3/4/14.
//  Copyright (c) 2014 Troy Jaeger. All rights reserved.
//

#import "AppDelegate.h"

#import "SearchViewController.h"
#import "AccountViewController.h"
#import "PostItemViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *searchController, *postItemController, *accountController;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        searchController = [[SearchViewController alloc] initWithNibName:@"SearchViewController_iPhone" bundle:nil];
        postItemController = [[PostItemViewController alloc] initWithNibName:@"PostItemViewController_iPhone" bundle:nil];
    } else {
        searchController = [[SearchViewController alloc] initWithNibName:@"SearchViewController_iPad" bundle:nil];
        postItemController = [[PostItemViewController alloc] initWithNibName:@"PostItemViewController_iPad" bundle:nil];
    }
    accountController = [[AccountViewController alloc] initWithNibName:@"AccountViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[searchController, postItemController, accountController];
    self.window.rootViewController = self.tabBarController;
    
    
    UITabBarItem *item1 = self.tabBarController.tabBar.items[0];
    item1.image = [[UIImage imageNamed:@"search_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]; // unselected image
    //item1.selectedImage = [UIImage imageNamed:@"tabbar-item1-selected"]; // selected image
    
    UITabBarItem *item2 = self.tabBarController.tabBar.items[1];
    item2.image = [[UIImage imageNamed:@"post_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]; // unselected image
    
    UITabBarItem *item3 = self.tabBarController.tabBar.items[2];
    item3.image = [[UIImage imageNamed:@"settings_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]; // unselected image
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
