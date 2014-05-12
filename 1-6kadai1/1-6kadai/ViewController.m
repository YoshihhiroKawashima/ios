//
//  ViewController.m
//  1-6kadai
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
    NSArray * papa = @[@"list_voice.pl",@"list_diary.pl",@"list_mymall_item.pl"];
    NSDictionary *disc =@{ @"domain" : @"mixi.jp",@"entry" : papa};
    NSDictionary *disc3 = @{@"tag_id" : @"7"};
    NSArray * array2 = @[disc3];
    NSDictionary *disc2 =@{ @"domain" : @"mmall.jp",@"entry" : array2};
    NSDictionary *disc4 = @{@"domain" : @"itunes.apple.com"};
    NSArray *array =@[disc,disc2,disc4];
    NSLog(@"array=%@",array);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
