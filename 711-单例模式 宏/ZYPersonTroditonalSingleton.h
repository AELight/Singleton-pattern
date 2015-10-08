//
//  ZYPersonTroditonalSingleton.h
//  711-单例模式 宏
//
//  Created by zhuyi on 15/7/11.
//  Copyright (c) 2015年 zhuyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYPersonTroditonalSingleton : NSObject

/** <#name#>*/
@property(nonatomic, strong)NSString *name;

+(instancetype)sharedInstance;
@end
