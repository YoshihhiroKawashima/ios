//
//  MixiCustomizedView.m
//  3-2
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "MixiCustomizedView.h"

@implementation MixiCustomizedView

static CGRect const kSubViewFrame = {{10, 10}, {300, 180}};
static CGRect const kButtonFrame = {{10, 10}, {220, 30}};

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self initializeView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

// xib を使用する場合
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        [self initializeView];
    }
    return self;
}

-(void)initializeView
{
    UIView *subView = [[UIView alloc] initWithFrame:kSubViewFrame];
    [subView setBackgroundColor:[UIColor redColor]];
    [self addSubview:subView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:kButtonFrame];
    label.text = @"hogehoge";
    label.backgroundColor = [UIColor clearColor];
    [subView addSubview:label];
}



@end
