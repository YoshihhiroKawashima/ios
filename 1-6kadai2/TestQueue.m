//
//  TestQueue.m
//  1-6kadai2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "TestQueue.h"

@implementation TestQueue

-(void) init
{
    array = [NSMutableArray array];
    
}

- (void)push:(id)object
{
    [array addObject:object];
    
}

- (id)pop
{
    return [array objectAtIndex:0];
}

- (NSInteger)size{
    return [array count];
}

@end
