//
//  ViewController.h
//  MixiView
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MixiSampleClass.h"
#import "MixiSampleViewController.h"
#import "MixiChildViewController.h"

@interface ViewController : UIViewController 
{
    MixiSampleViewController *sampleVC;
}


- (IBAction)IBActionpressAddButtonidsenderselfviewaddSubview_sampleVCviewpressAddButton:(id)sender;

- (IBAction)pressModalButton:(id)sender;

@end
