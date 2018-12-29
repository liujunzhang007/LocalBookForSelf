//
//  LJZMainPageVC.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/27.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "LeonMainPageVC.h"
#import "MainPageTableViewDelegate.h"

@interface LeonMainPageVC ()

@end

@implementation LeonMainPageVC{
    
    BaseTableView *_tableView;
    MainPageTableViewDelegate *_delegate;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"密码";
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self configurationUI];
    [self configurationLayout];

}
- (void)configurationUI{
    __weak typeof(self) weakSelf = self;

    _delegate = [[MainPageTableViewDelegate alloc]init];
    
    _tableView = [[BaseTableView alloc]init];
    [_tableView setSearchControllerDelegate:_delegate];
    _tableView.delegate = _delegate;
    _tableView.dataSource = _delegate;
    [self.view addSubview:_tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.view.mas_top);
        make.left.mas_equalTo(weakSelf.view.mas_left);
        make.right.mas_equalTo(weakSelf.view.mas_right);
        make.bottom.mas_equalTo(weakSelf.view.mas_bottomMargin);
    }];

    
}
- (void)configurationLayout{
//    __weak typeof(self) weakSelf = self;
//    [_searchController.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(weakSelf.view.mas_topMargin);
//        make.left.equalTo(weakSelf.view);
//        make.size.mas_equalTo(CGSizeMake(weakSelf.view.frame.size.width, 54));
//    }];
//    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self->_searchController.searchBar.mas_bottom);
//        make.left.mas_equalTo(weakSelf.view.mas_left);
//        make.right.mas_equalTo(weakSelf.view.mas_right);
//        make.bottom.mas_equalTo(weakSelf.view.mas_bottomMargin);
//    }];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end



//@interface MainPageSearchController()
//
//@end
//
//@implementation MainPageSearchController
//- (instancetype)initWithSearchResultsController:(UIViewController *)searchResultsController{
//    if (self = [super initWithSearchResultsController:searchResultsController]) {
//        [self configuration];
//    }
//    return self;
//}
//- (void)configuration{
//    //设置UISearchController的显示属性，以下3个属性默认为YES
//    //搜索时，背景变暗色
//    self.dimsBackgroundDuringPresentation = NO;
//    //搜索时，背景变模糊
//    if (@available(iOS 9.1, *)) {
//        self.obscuresBackgroundDuringPresentation = NO;
//    } else {
//        // Fallback on earlier versions
//    }
//    //隐藏导航栏
//    self.hidesNavigationBarDuringPresentation = NO;
//
//}
//@end
