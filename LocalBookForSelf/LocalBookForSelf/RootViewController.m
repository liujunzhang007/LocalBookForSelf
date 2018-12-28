//
//  ViewController.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/27.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    LeonMainPageVC *homeVC=[[LeonMainPageVC alloc] init];
    [self setTabBarItem:homeVC.tabBarItem
                  title:@"首页"
              titleSize:10.0
          titleFontName:@"HeiTi SC"
          selectedImage:@"mian_note_sele"
     selectedTitleColor:UIColorFromRGB(0x000000)
            normalImage:@"main_note_nor"
       normalTitleColor:[UIColor grayColor]];
    
    LeonSettingVC *blogVC=[[LeonSettingVC alloc] init];
    [self setTabBarItem:blogVC.tabBarItem
                  title:@"我的"
              titleSize:10.0
          titleFontName:@"HeiTi SC"
          selectedImage:@"mian_setting_sele"
     selectedTitleColor:UIColorFromRGB(0x000000)
            normalImage:@"main_setting_nor"
       normalTitleColor:[UIColor grayColor]];

    

    UINavigationController *homeNV = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UINavigationController *blogNV = [[UINavigationController alloc] initWithRootViewController:blogVC];
    [self setNavigationController:homeNV];
    [self setNavigationController:blogNV];
    // 把子控制器添加到UITabBarController
    self.viewControllers = @[homeNV, blogNV];
    

}
- (void)setNavigationController:(UINavigationController *)NavigationVC{
    NavigationVC.navigationBar.barTintColor = UIColorFromRGB(0x151617);
    
}
- (void)setTabBarItem:(UITabBarItem *)tabbarItem
                title:(NSString *)title
            titleSize:(CGFloat)size
        titleFontName:(NSString *)fontName
        selectedImage:(NSString *)selectedImage
   selectedTitleColor:(UIColor *)selectColor
          normalImage:(NSString *)unselectedImage
     normalTitleColor:(UIColor *)unselectColor
{
    
    //设置图片
    tabbarItem = [tabbarItem initWithTitle:title image:[[UIImage imageNamed:unselectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabbarItem setTitle:title];
    
    // 未选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:unselectColor,NSFontAttributeName:[UIFont fontWithName:fontName size:size]} forState:UIControlStateNormal];

    // 选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selectColor,NSFontAttributeName:[UIFont fontWithName:fontName size:size]} forState:UIControlStateSelected];
}


@end


//    NSData *data = [NSData data];
//    NSError *error;
//    NSData *encryptedData = [RNEncryptor encryptData:data withSettings:kRNCryptorAES256Settings password:@"123456" error:&error];
//
//    NSData *decryptedData = [RNDecryptor decryptData:encryptedData withSettings:kRNCryptorAES256Settings password:@"123456" error:&error];
//    MyLog(@"%@",decryptedData);
