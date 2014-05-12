//
//  ViewController.h
//  1-6kadai2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestStack.h"
#import "TestQueue.h"

@interface ViewController : UIViewController{
    TestStack *stack;
    TestQueue *queue;
}

@property (weak, nonatomic) IBOutlet UITextField *text;

- (IBAction)pushButton:(id)sender;


@end
