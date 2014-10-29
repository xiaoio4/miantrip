//
//  ViewController.m
//  MianbTrip
//
//  Created by liuxin on 14/10/29.
//  Copyright (c) 2014年 liuxin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = self.tabBar.frame;
    
    [self.tabBar removeFromSuperview];
    
    self.view.backgroundColor = [UIColor yellowColor];
    UIView *view = [[UIView alloc] init];
    NSArray *imageArray = [NSArray arrayWithObjects:@"",@"",@"",@"",@"", nil];
    NSArray *seleceImageArray = [NSArray arrayWithObjects:@"",@"",@"",@"",@"", nil];
    for (int i = 0; i < [imageArray count]; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.tag = i;
        [view addSubview:btn];
    }
    [self.view addSubview:view];
    self.viewControllers = [NSArray arrayWithObjects:[self viewcontrollerWithTitle:nil AndWithImage:@"root_tabbar_recommend 2"],[self viewcontrollerWithTitle:nil AndWithImage:@"root_tabbar_recommend 2"],[self viewcontrollerWithTitle:nil AndWithImage:@"root_tabbar_recommend 2"],[self viewcontrollerWithTitle:nil AndWithImage:@"root_tabbar_recommend 2"],[self viewcontrollerWithTitle:nil AndWithImage:@"root_tabbar_recommend 2"], nil];
    // Do any additional setup after loading the view, typically from a nib.
}

-(UINavigationController *) viewcontrollerWithTitle:(NSString *) title AndWithImage:(NSString *) image
{
    UIViewController *viewController = [[UIViewController alloc]init];
    viewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[UIImage imageNamed:image] tag:0];
    viewController.title = title;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    return nav;
    
}
- (IBAction)recommendBtnClick:(id)sender {
    self.selectedIndex = 0;
}
- (IBAction)destnationBtnClick:(id)sender {
    self.selectedIndex = 1;
}

- (IBAction)addBtnClick:(id)sender {
    self.selectedIndex = 2;
}
- (IBAction)saleBtnClick:(id)sender {
    self.selectedIndex = 3;
    
}
- (IBAction)meBtnClick:(id)sender {
    self.selectedIndex = 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
