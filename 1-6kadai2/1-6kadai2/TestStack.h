//
//  TestStack.h
//  1-6kadai2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestStack : NSObject{
    NSMutableArray * array;
    NSMutableArray * copyarray;
   }

- (void) init;

- (void)push:(id)object;

- (id)pop;

- (NSInteger)size;


@end
