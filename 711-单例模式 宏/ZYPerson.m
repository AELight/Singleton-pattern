//
//  ZYPerson.m
//  711-单例模式 宏
//
//  Created by zhuyi on 15/7/11.
//  Copyright (c) 2015年 zhuyi. All rights reserved.
//

#import "ZYPerson.h"

@implementation ZYPerson

/*
//一般方式

static ZYPerson * _person;

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _person = [super allocWithZone:zone];
    });
    return _person;
}
+ (instancetype)sharedPerson{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _person = [[self alloc]init];
        
    });
    return _person;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _person;
}*/
ZYSingleM(ZYPerson)
@end
