//
//  ViewController.m
//  KYShareMenu
//
//  Created by Kitten Yang on 3/24/15.
//  Copyright (c) 2015 Kitten Yang. All rights reserved.
//

#import "ViewController.h"
#import "KYShareViewController.h"

@interface ViewController ()<KYShareDismissDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    KYShareViewController *shareVC = segue.destinationViewController;
    shareVC.delegate = self;
    shareVC.blurStyle = UIBlurEffectStyleDark;
}


//设置主控制器去dismiss弹出的视图，而不是弹出的视图自己dismiss自己
-(void)didDismissKYShareVC:(KYShareViewController *)viewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
