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
    [self configurationUI];
    [self configurationLayout];

}
- (void)configurationUI{
    
    _delegate = [[MainPageTableViewDelegate alloc]init];
    _tableView = [[BaseTableView alloc]init];
    [_tableView setSearchControllerDelegate:_delegate];
    _tableView.delegate = _delegate;
    _tableView.dataSource = _delegate;
    _delegate.targetVC = _tableView.searchController;
    [self.view addSubview:_tableView];
    
}
- (void)configurationLayout{
    __weak typeof(self) weakSelf = self;
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.view.mas_top);
        make.left.mas_equalTo(weakSelf.view.mas_left);
        make.right.mas_equalTo(weakSelf.view.mas_right);
        make.bottom.mas_equalTo(weakSelf.view.mas_bottomMargin);
    }];

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
