//
//  TVSCustomCell.m
//  4-1
//
//  Created by kawashima yoshihiro on 2014/05/08.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import "TVSCustomCell.h"

@implementation TVSCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
