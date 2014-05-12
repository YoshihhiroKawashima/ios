//
//  ViewController.m
//  MixiView
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "MixiViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MixiSampleClass *a = [[MixiSampleClass alloc]init];
    a.name=@"川島";
    NSLog(@"name=%@",a.name);
    sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)IBActionpressAddButtonidsenderselfviewaddSubview_sampleVCviewpressAddButton:(id)sender {
    [self.view addSubview:sampleVC.view];
}

- (IBAction)pressModalButton:(id)sender {
    MixiChildViewController *mixiChildViewController = [[MixiChildViewController alloc] init];
    mixiChildViewController.delegate = self; // [5] delegate 先として自身を代入
    [self presentViewController:mixiChildViewController animated:YES completion:nil];
}


#pragma mark - MixiPostViewControllerDelegate methods
-(void)didPressCloseButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
