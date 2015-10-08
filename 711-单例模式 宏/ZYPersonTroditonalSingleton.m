//
//  ZYPersonTroditonalSingleton.m
//  711-单例模式 宏
//
//  Created by zhuyi on 15/7/11.
//  Copyright (c) 2015年 zhuyi. All rights reserved.
//

#import "ZYPersonTroditonalSingleton.h"

@interface ZYPersonTroditonalSingleton()<NSCopying>

@end
@implementation ZYPersonTroditonalSingleton

static id _instance;
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    @synchronized(self){
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
        return _instance;
    }
}
+(instancetype)sharedInstance{
    @synchronized(self){
        if (_instance == nil) {
            _instance = [[self alloc]init];
        }
        return _instance;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}
@end
