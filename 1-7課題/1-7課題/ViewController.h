//
//  ViewController.h
//  1-7課題
//
//  Created by kawashima yoshihiro on 2014/05/12.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<SecondViewControllerDelegate>{
    SecondViewController *secondViewController;
    
}

- (IBAction)PushButton:(id)sender;

@end
