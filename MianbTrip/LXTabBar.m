//
//  LXTabBar.m
//  MianbTrip
//
//  Created by liuxin on 14/10/29.
//  Copyright (c) 2014年 liuxin. All rights reserved.
//

#import "LXTabBar.h"

@interface LXTabBar ()

@property (nonatomic, weak)UIButton *selectBtn;

@end



@implementation LXTabBar
@synthesize delegate;
-(void)addBtnWithImage:(UIImage *)image selectImage:(UIImage *)selectimage
{
    UIButton *btn = [[UIButton alloc] init];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selectimage forState:UIControlStateSelected];
    [self addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    if (self.subviews.count == 1) {
        [self btnClick:btn];
    }
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count = self.subviews.count;
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.subviews[i];
        btn.tag = i;
        
    }
}
-(void)btnClick:(UIButton *) btn
{
    self.selectBtn.selected = NO;
    btn.selected = YES;
    self.selectBtn = btn;
    
    if ([self.delegate respondsToSelector:@selector(selectTabBar:From:To:)]) {
        [self.delegate selectTabBar:self From:self.selectBtn.tag To:btn.tag];
    }
}

@end
