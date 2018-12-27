//
//  AppDelegate.h
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/27.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "RootViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    RootViewController *_rootVC;
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;
@property (atomic, readonly) UINavigationController *navController;
@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

