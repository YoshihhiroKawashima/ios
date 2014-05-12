//
//  SecondViewController.h
//  1-7課題
//
//  Created by kawashima yoshihiro on 2014/05/12.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

@optional

-(void)sampleDelegateMethod;

@end


@interface SecondViewController : UIViewController

- (IBAction)PushButton:(id)sender;

@property (strong, nonatomic) id<SecondViewControllerDelegate> delegate;

-(void)sampleMethod;

@end
