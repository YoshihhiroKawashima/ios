//
//  TestStack.m
//  1-6kadai2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "TestStack.h"

@implementation TestStack

- (void) init
{
    array =[[NSMutableArray alloc] init];
    copyarray =[[NSMutableArray alloc] init];
}


- (void)push:(id)object
{
    copyarray =  [[NSMutableArray alloc] init];
    
    copyarray =  [NSMutableArray arrayWithArray:array];

    array =  [[NSMutableArray alloc] init];
    
    [array addObject:object];
    for (NSString *str in copyarray) {
       [array addObject:str];
    }
    
    
}

- (id)pop
{
    return [array objectAtIndex:0];
}

- (NSInteger)size{
    return [array count];
}



@end
