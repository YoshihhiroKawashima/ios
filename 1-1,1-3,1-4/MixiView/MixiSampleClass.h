//
//  NSObject+MixiSampleClass.h
//  MixiView
//
//  Created by kawashima yoshihiro on 2014/05/07.
//  Copyright (c) 2014年 kawashima yoshihiro. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

@property (nonatomic, strong) NSString *name; //[2] property

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType; //[3] instance method
+(NSString *) getStaticString; //[4] class method

@end
