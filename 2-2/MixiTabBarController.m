//
//  MixiTabBarController.m
//  2-2
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "MixiTabBarController.h"

@interface MixiTabBarController ()

@end

@implementation MixiTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FirstViewController *fvc = [[FirstViewController alloc] init];
    [self addChildViewController:fvc];
    fvc.view.frame = _dummyView.frame;
    [self.view addSubview:fvc.view];
    [fvc didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)transitionFromViewController:(UIViewController *)fromViewController
                   toViewController:(UIViewController *)toViewController
{
    [fromViewController willMoveToParentViewController:nil];
    [self addChildViewController:toViewController];
    
    toViewController.view.frame = CGRectMake(0, -_dummyView.frame.size.height, _dummyView.frame.size.width, _dummyView.frame.size.height);
    
   [self transitionFromViewController:fromViewController
                      toViewController:toViewController
                              duration:0.5
                               options:0
                            animations:^{
                                toViewController.view.frame = fromViewController.view.frame;
                                fromViewController.view.frame = CGRectMake(0, 50, _dummyView.frame.size.width, _dummyView.frame.size.height);
                            } completion:^(BOOL finished) {
                                [fromViewController removeFromParentViewController];
                                [toViewController didMoveToParentViewController:self];
                            }];
     
}

- (IBAction)pressFirstButton:(id)sender {
    UIViewController *currentVC = self.childViewControllers[0];
    FirstViewController *newVC = [[FirstViewController alloc] init];
    [self transitionFromViewController:currentVC toViewController:newVC];
}

- (IBAction)pressSecondButton:(id)sender {
    UIViewController *currentVC = self.childViewControllers[0];
    SecondViewController *newVC = [[SecondViewController alloc] init];
    [self transitionFromViewController:currentVC toViewController:newVC];
}
@end
