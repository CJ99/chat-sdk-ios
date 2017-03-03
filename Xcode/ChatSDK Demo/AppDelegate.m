//
//  AppDelegate.m
//  ChatSDK Demo
//
//  Created by Benjamin Smiley-andrews on 19/12/2016.
//  Copyright © 2016 deluge. All rights reserved.
//

#import "AppDelegate.h"


#import <ChatSDK/ChatCore.h>
#import <ChatSDK/ChatUI.h>
#import <ChatSDK/ChatFirebaseAdapter.h>
#import <ChatSDK/ChatCoreData.h>

#import <Firebase/Firebase.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Start the twitter helper to handle login
    //[BTwitterHelper sharedHelper];
    
    // Set the default interface manager
    [BInterfaceManager sharedManager].a = [[BDefaultInterfaceAdapter alloc] init];
    
//    // Create a network adapter to communicate with Firebase
//    // The network adapter handles network traffic
    BFirebaseNetworkAdapter * adapter = [[BFirebaseNetworkAdapter alloc] init];
//
    // This is the main view that contains the tab bar
    UIViewController * mainViewController = [[BAppTabBarController alloc] initWithNibName:Nil bundle:Nil];
//
    if (adapter.socialLogin) {
        [adapter.socialLogin application: application didFinishLaunchingWithOptions:launchOptions];
    }

    // Set the login screen
    // This screen is customizable - for example if you are using the
    // Two factor authentication module
    adapter.auth.challengeViewController = [[BLoginViewController alloc] initWithNibName:Nil bundle:Nil];
    
    // Set the adapter
    [BNetworkManager sharedManager].a = adapter;
    
    // Set the data handler
    // The data handler is responsible for persisting data on the device
    [BStorageManager sharedManager].a = [[BCoreDataManager alloc] init];
    
    // Set the root view controller
    [self.window setRootViewController:mainViewController];
    
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}


// During the Facebook login flow, your app passes control to the Facebook iOS app or Facebook in a mobile browser.
// After authentication, your app will be called back with the session information.
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    if ([BNetworkManager sharedManager].a.socialLogin) {
        return [[BNetworkManager sharedManager].a.socialLogin application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    }
    return NO;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}



- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
