//
//  ViewController.m
//  6
//
//  Created by kawashima yoshihiro on 2014/05/08.
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
    
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:5000/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSData *data = [@"hoge fuga piyo" dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%d", [data length]] forHTTPHeaderField:@"Content-Length"]; // PostでContent-Lengthを設定する
    [request setHTTPBody:data];
    
    
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    [NSURLConnection sendAsynchronousRequest:request queue:mainQueue completionHandler:^(NSURLResponse *res, NSData *data, NSError *error) {
        
        NSLog(@"%@",[NSString stringWithFormat:@"%@",data]);
        
    }];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
