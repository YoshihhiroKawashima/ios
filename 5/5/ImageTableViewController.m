//
//  ImageTableViewController.m
//  5
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "ImageTableViewController.h"

@interface ImageTableViewController ()

@end

@implementation ImageTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    array = [NSMutableArray array];
    _assetsLibrary = [[ALAssetsLibrary alloc] init];
    [_assetsLibrary enumerateGroupsWithTypes:ALAssetsGroupAll
                                  usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
                                      
                                      if(group){
                                          
                                          if (self.AlbumName ==[group valueForProperty:ALAssetsGroupPropertyName]) {
                                              //assetsEnumerationBlock
                                              
                                                               ALAssetsGroupEnumerationResultsBlock assetsEnumerationBlock = ^(ALAsset *result, NSUInteger index, BOOL *stop) {
                                              
                                                                   if (result) {
                                                                       //asset をNSMutableArraryに格納
                                                                      [array addObject:result];
                                                                       
                                              
                                                                      }else{
                                                                           //NSMutableArraryに格納後の処理（テスト的に_AlAssetsArrを確認）
                                                                           NSLog(@"array=%@",array);
                                                                       }
                                                               };
                                                            //アルバム(group)からALAssetの取得
                                                              [group enumerateAssetsUsingBlock:assetsEnumerationBlock];
                                          }
                                      }
                                  } failureBlock:^(NSError *error) {
                                      // iPhone の設定で写真アクセスを拒否している場合
                                  }];
//    NSLog(@"array = %@",[array objectAtIndex:0]);
    
//    [_assetsLibrary enumerateGroupsWithTypes:ALAssetsGroupAlbum
//                            usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
//        array = [NSMutableArray array];
//         //アルバムがなかった場合はgroupがNUL
//         //ALAssetsLibraryのすべてのアルバムが列挙される
//       if (group) {
//           
//           NSLog(@"%@,%@",self.AlbumName,[group valueForProperty:ALAssetsGroupPropertyName]);
//             //アルバム名が「_AlbumName」と同一だった時の処理
//             if (self.AlbumName ==[group valueForProperty:ALAssetsGroupPropertyName]) {
//                 
//                 //ここでALAssetsLibraryからアルバム(group)を取得できる
//                 
//                 //assetsEnumerationBlock
//                 ALAssetsGroupEnumerationResultsBlock assetsEnumerationBlock = ^(ALAsset *result, NSUInteger index, BOOL *stop) {
//                     
//                     if (result) {
//                         //asset をNSMutableArraryに格納
//                         [array addObject:result];
//                         
//                         }else{
//                             //NSMutableArraryに格納後の処理（テスト的に_AlAssetsArrを確認）
//                             NSLog(@"array=%@",array);
//                         }
//                 };
//                 //アルバム(group)からALAssetの取得
//                 [group enumerateAssetsUsingBlock:assetsEnumerationBlock];
//             }
//       }
//     } failureBlock:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [[array objectAtIndex:indexPath.row] valueForProperty:ALAssetPropertyDate]];
    cell.imageView.image = [UIImage imageWithCGImage:[[array objectAtIndex:indexPath.row] thumbnail]];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
