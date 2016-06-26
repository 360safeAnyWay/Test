//
//  AppDelegate.m
//  Test
//
//  Created by ywj on 16/6/26.
//  Copyright © 2016年 yangwenjun. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface AppDelegate ()<UITabBarControllerDelegate, UINavigationBarDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    //tab1
    ViewController *tabController = [[ViewController alloc] init];
    UINavigationController *tabNav =[[UINavigationController alloc] initWithRootViewController:tabController];
    tabNav.tabBarItem.title = @"首页";
    
    //tab2
    ViewController1 *tab1Controller = [[ViewController1 alloc] init];
    UINavigationController *tab1Nav1 =[[UINavigationController alloc] initWithRootViewController:tab1Controller];
    tab1Nav1.tabBarItem.title = @"订单";
    
    //tab3
    ViewController2 *tab2Controller = [[ViewController2 alloc] init];
    UINavigationController *tab2Nav =[[UINavigationController alloc] initWithRootViewController:tab2Controller];
    tab2Nav.tabBarItem.title = @"我";
    
    tabbarController.viewControllers = @[tabNav, tab1Nav1, tab2Nav];
    
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
