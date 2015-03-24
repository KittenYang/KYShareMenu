//
//  KYShareViewController.h
//  SideChef_iphone
//
//  Created by Kitten Yang on 1/16/15.
//  Copyright (c) 2015 SideChef. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VVBlurViewController.h"

@class KYShareViewController;

//----通知RecipeDetailBoard_iPhone去dismiss当前VC
@protocol KYShareDismissDelegate <NSObject>
-(void)didDismissKYShareVC:(KYShareViewController *)viewController;
@end




@interface KYShareViewController : VVBlurViewController

@property(nonatomic,weak)id<KYShareDismissDelegate> delegate;


@end
