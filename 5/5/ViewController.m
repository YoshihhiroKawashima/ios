//
//  ViewController.m
//  5
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
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)pressCameraButton:(id)sender {
    /*
    UIImagePickerController *imagePickerVC = [[UIImagePickerController alloc] init];
    // UIImagePickerControllerSourceTypeSavedPhotosAlbum だと直接写真選択画面
    imagePickerVC.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    // 選択したメディアの編集を可能にするかどうか
    imagePickerVC.allowsEditing = YES;
    
    // 選択可能なメディアの制限 デフォルトは photo のみ。
    // movie を選択可能にするには
    // imagePickerVC.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:imagePickerVC.sourceType];
    imagePickerVC.delegate = self;
    [self presentViewController:imagePickerVC animated:YES completion:nil];
    */
    TableViewController *hogeViewController = [[TableViewController alloc] init];
    hogeViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:hogeViewController animated:YES completion:nil];
    
}
/*
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    [_photoImageView setImage:info[UIImagePickerControllerOriginalImage]];
    
    
}*/

@end
