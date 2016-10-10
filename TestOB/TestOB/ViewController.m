//
//  ViewController.m
//  TestOB
//
//  Created by do on 2016/10/9.
//  Copyright © 2016年 do. All rights reserved.
//

#import "ViewController.h"
#import "BRTBeaconSDK.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //asdasd a
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 50);
    [btn setTitle:@"搜索" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click
{
    //cccasdf
    [BRTBeaconSDK startRangingBeaconsInRegions:nil onCompletion:^(NSArray *beacons, BRTBeaconRegion *region, NSError *error) {
        BRTBeacon *item = [beacons firstObject];
        NSLog(@"\n  开始");
        NSLog(@"设备名 = %@",item.name);
        NSLog(@"设备的UUID = %@",item.proximityUUID);
        NSLog(@"设备的主要属性值major = %@",item.major);
        NSLog(@"设备的次要属性值minor = %@",item.minor);
        NSLog(@"接收信号强度指示 = %ld",item.rssi);
        NSLog(@"该值单位‘米’ = %f",item.accuracy);
        NSLog(@"beacon设备到手机的距离 = %@",item.distance);
        NSLog(@"该值代表相对距离远近 = %ld",item.proximity);
        NSLog(@"region = %@",item.region);
        NSLog(@"\n  结束");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
