//
//  ImageTableViewController.h
//  5
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface ImageTableViewController : UITableViewController{
    NSMutableArray *array;
}

@property (assign,nonatomic) NSString* AlbumName;

@property (nonatomic, strong) ALAssetsLibrary *assetsLibrary;

@end
