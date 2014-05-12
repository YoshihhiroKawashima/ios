//
//  TableViewController.h
//  5
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "ImageTableViewController.h"

@interface TableViewController : UITableViewController{
    NSMutableArray *array;
}

@property (nonatomic, strong) ALAssetsLibrary *assetsLibrary;
- (IBAction)pushButon:(id)sender;

@end
