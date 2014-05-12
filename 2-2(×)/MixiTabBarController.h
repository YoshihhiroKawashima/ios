//
//  MixiTabBarController.h
//  2-2
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface MixiTabBarController : UITabBarController

- (IBAction)pressFirstButton:(id)sender;

- (IBAction)pressSecondButton:(id)sender;


@property (weak, nonatomic) IBOutlet UIView *dummyView;



@end
