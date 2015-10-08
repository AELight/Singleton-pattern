//
//  ViewController.m
//  711-单例模式 宏
//
//  Created by zhuyi on 15/7/11.
//  Copyright (c) 2015年 zhuyi. All rights reserved.
//

#import "ViewController.h"
#import "ZYPerson.h"
#import "ZYPersonTroditonalSingleton.h"

//单例模式不应使用继承

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //使用GCD方式
    /*
    ZYPerson *p1 = [[ZYPerson alloc]init];
    //无参数宏
//    ZYPerson *p2 = [ZYPerson sharedInstance];///
    //有参数宏
    ZYPerson *p2  = [ZYPerson sharedZYPerson];
    ZYPerson *p3 = [[ZYPerson alloc]init];
//    ZYPerson *p4 = [ZYPerson sharedInstance];
    ZYPerson *p4 = [ZYPerson sharedZYPerson];
    */
    
    //使用传统方式
    ZYPersonTroditonalSingleton *p1 = [[ZYPersonTroditonalSingleton alloc]init];
    ZYPersonTroditonalSingleton *p2 = [ZYPersonTroditonalSingleton sharedInstance];
    ZYPersonTroditonalSingleton *p3 = [[ZYPersonTroditonalSingleton alloc]init];
    ZYPersonTroditonalSingleton *p4 = [ZYPersonTroditonalSingleton sharedInstance];
    p1.name = @"hhhhhh";
    NSLog(@"%@--%@--%@--%@",p1,p2,p3,p4);
    NSLog(@"%@--%@--%@--%@",p1.name,p2.name,p3.name,p4.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
