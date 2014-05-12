//
//  ViewController.m
//  1-7課題
//
//  Created by kawashima yoshihiro on 2014/05/12.
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
    secondViewController = [[SecondViewController alloc] init];
    secondViewController.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)PushButton:(id)sender {
    
    
    secondViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:secondViewController animated:YES completion:nil];
    
}

-(void)sampleDelegateMethod
{
    NSLog(@"戻る");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
