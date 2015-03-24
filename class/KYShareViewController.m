//
//  KYShareViewController.m
//  SideChef_iphone
//
//  Created by Kitten Yang on 1/16/15.
//  Copyright (c) 2015 SideChef. All rights reserved.
//


#import "KYShareViewController.h"


#define ScreenWight  [[UIScreen mainScreen]bounds].size.width
#define ScreenHeight [[UIScreen mainScreen]bounds].size.height

#define BtnWidth   ([[UIScreen mainScreen]bounds].size.width - 140)/3
#define kDelayTime 0.6f

@interface KYShareViewController ()
@property (nonatomic,strong)UIDynamicAnimator *animator;

@property (strong, nonatomic) IBOutlet UIButton *weibo;
@property (strong, nonatomic) IBOutlet UIButton *wechat;
@property (strong, nonatomic) IBOutlet UIButton *friendcircle;
@property (strong, nonatomic) IBOutlet UIButton *qq;
@property (strong, nonatomic) IBOutlet UIButton *douban;
@property (strong, nonatomic) IBOutlet UIButton *tencent;

@end

@implementation KYShareViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    [self bounceMenu];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)bounceMenu{
    CGPoint point1 =  CGPointMake(30+BtnWidth/2, (ScreenHeight / 2 -20)-BtnWidth/2);
    CGPoint point2 =  CGPointMake(70 + 1.5*BtnWidth, (ScreenHeight / 2 -20)-BtnWidth/2);
    CGPoint point3 =  CGPointMake(110 + 2.5*BtnWidth, (ScreenHeight / 2 -20)-BtnWidth/2);
    CGPoint point4 =  CGPointMake(30+BtnWidth/2, (ScreenHeight / 2 + 20) + BtnWidth/2);
    CGPoint point5 =  CGPointMake(70 + 1.5*BtnWidth,(ScreenHeight / 2 + 20) + BtnWidth/2);
    CGPoint point6 =  CGPointMake(110 + 2.5*BtnWidth,(ScreenHeight / 2 + 20) + BtnWidth/2);


    UIDynamicAnimator *animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];

    UISnapBehavior *snap1 = [[UISnapBehavior alloc]initWithItem:self.weibo snapToPoint:point1];
    [animator addBehavior:snap1];
    UISnapBehavior *snap2 = [[UISnapBehavior alloc]initWithItem:self.wechat snapToPoint:point2];
    [animator addBehavior:snap2];
    UISnapBehavior *snap3 = [[UISnapBehavior alloc]initWithItem:self.friendcircle snapToPoint:point3];
    [animator addBehavior:snap3];
    UISnapBehavior *snap4 = [[UISnapBehavior alloc]initWithItem:self.qq snapToPoint:point4];
    [animator addBehavior:snap4];
    UISnapBehavior *snap5 = [[UISnapBehavior alloc]initWithItem:self.douban snapToPoint:point5];
    [animator addBehavior:snap5];
    UISnapBehavior *snap6 = [[UISnapBehavior alloc]initWithItem:self.tencent snapToPoint:point6];
    [animator addBehavior:snap6];

    self.animator = animator;
}

- (IBAction)dismissBt:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(didDismissKYShareVC:)]) {
        [self.delegate didDismissKYShareVC:self];
    }
}

- (IBAction)shareBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case 101: //微博
            [self shareToWeibo];
            break;
        case 102: //微信好友
            [self sharetoWechatFriends];
            break;
        case 103: //朋友圈
            [self sharetoWechatFriendsCircle];
            break;
        case 104: //QQ
            [self shareToQQ];
            break;
        case 105: //豆瓣
            [self shareToDouban];
            break;
        case 106: //EMail
            [self shareToEmail];
            break;
            
        default:
            break;
    }
}

-(void)shareToWeibo{
    
    NSLog(@"shareToWeibo");
}

-(void)sharetoWechatFriends{
    
    NSLog(@"sharetoWechatFriends");
}

-(void)sharetoWechatFriendsCircle{
    
    NSLog(@"sharetoWechatFriendsCircle");
}

-(void)shareToQQ{
    
    NSLog(@"shareToQQ");
}

-(void)shareToDouban{
    
    NSLog(@"shareToDouban");
}

-(void)shareToEmail{
    
    NSLog(@"shareToEmail");
}


@end
