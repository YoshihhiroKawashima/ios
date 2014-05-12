//
//  MixiChildViewController.h
//  1-1,1-3
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MixiChildViewControllerDelegate <NSObject> // [1] プロトコルの宣言
-(void)didPressCloseButton;
@end


@interface MixiChildViewController : UIViewController

@property (nonatomic, weak) id<MixiChildViewControllerDelegate> delegate;

- (IBAction)pressClosedButton:(id)sender;

@end
