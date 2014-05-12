//
//  ViewController.m
//  1-6kadai2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    stack = [TestStack alloc];
    queue = [TestQueue alloc];
    [stack init];
    [queue init];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton:(id)sender {
    [stack push:_text.text];
    [queue push:_text.text];
    
    NSLog(@"スタックの先頭%@,スタックの個数%d",[ NSString stringWithFormat :[stack pop]],[stack size]);
    NSLog(@"キューの先頭%@,キューの個数%d",[ NSString stringWithFormat :[queue pop]],[queue size]);
}
@end
