//
//  MFTAppDelegate.h
//  ModalFromTab
//
//  Created by 武田 祐一 on 2013/04/17.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFTAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>{
    UIViewController *viewController1;
    UIViewController *viewController2;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
