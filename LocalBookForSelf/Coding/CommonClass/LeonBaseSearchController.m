//
//  MainPageSearchController.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/29.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "LeonBaseSearchController.h"

@interface LeonBaseSearchController()<UISearchBarDelegate>

@end

@implementation LeonBaseSearchController{
    

}
- (instancetype)initWithSearchResultsController:(UIViewController *)searchResultsController{
    if (self = [super initWithSearchResultsController:searchResultsController]) {
        [self configuration];
    }
    return self;
}
- (void)configuration{
    self.searchBar.delegate = self;

    self.searchBar.barTintColor = [UIColor whiteColor];
    [self.searchBar setImage:[UIImage imageNamed:@"searchController_seachIcon"] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
//    _searchField = [self getSearchControllerTextField];
//    _searchField.backgroundColor = UIColorFromRGB(0xe6e8eb);
//    _searchField.tintColor = [UIColor redColor];
    [[UITextField appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]] setBackgroundColor:UIColorFromRGB(0xe6e8eb)];
    [[UITextField appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]] setTextColor:UIColorFromRGB(0x666666)];
    [self.searchBar setTintColor:UIColorFromRGB(0xff6161)];
    [[UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]] setTintColor:UIColorFromRGB(0xff6161)];
    [[UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]] setTitle:@"Cancel"];
    
    //设置UISearchController的显示属性，以下3个属性默认为YES
    self.dimsBackgroundDuringPresentation = NO;//搜索时，背景变暗色
    if (@available(iOS 9.1, *)) {
        self.obscuresBackgroundDuringPresentation = NO;//搜索时，背景变模糊
    } else {
        // Fallback on earlier versions
    }
    self.hidesNavigationBarDuringPresentation = YES;//隐藏导航栏
    
}
- (UITextField *)getSearchControllerTextField{
    for (UIView *view in self.searchBar.subviews[0].subviews) {
        if([view isKindOfClass:[UITextField class]]){
            return (UITextField *)view;
        }
    }
    return nil;
}
- (UIButton *)getSearchControllerButton{//仅在showCancelButton为True时好用
    for (UIView *view in self.searchBar.subviews[0].subviews) {
        if([view isKindOfClass:[UIButton class]]){
            return (UIButton *)view;
        }
    }
    return nil;
}

#pragma mark -
#pragma mark - UISearchBarDelegate

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    
}
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{

}
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{

    return YES;
}
@end
