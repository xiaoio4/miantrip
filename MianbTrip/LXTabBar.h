//
//  LXTabBar.h
//  MianbTrip
//
//  Created by liuxin on 14/10/29.
//  Copyright (c) 2014年 liuxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LXTabBar;

@protocol LXTabBarDelegate <NSObject>

-(void) selectTabBar:(LXTabBar *) tabBar From:(NSInteger) from To:(NSInteger) to;

@end

@interface LXTabBar : UIView
@property (nonatomic, weak) id<LXTabBarDelegate> delegate;

-(void)addBtnWithImage:(UIImage *) image selectImage:(UIImage *) selectimage;

@end
