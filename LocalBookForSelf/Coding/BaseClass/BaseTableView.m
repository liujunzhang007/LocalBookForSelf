//
//  BaseTableView.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/29.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "BaseTableView.h"

@interface BaseTableView()


@end
@implementation BaseTableView
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        [self configuration];
    }
    return self;
}
- (instancetype)init{
    if (self = [super init]) {
        [self configuration];
    }
    return self;
}
- (void)configuration{
    self.clickedCount = 0;
}
- (void)setSearchControllerDelegate:(BaseTableViewDelegate *)delegate{
    _searchController = [[LeonBaseSearchController alloc]initWithSearchResultsController:nil];
    _searchController.view.frame = self.frame;
    _searchController.delegate = delegate;
    _searchController.searchResultsUpdater = delegate;
    delegate.targetVC = _searchController;
    self.tableHeaderView =_searchController.searchBar;
    [self addObserver:delegate forKeyPath:@"clickedCount" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

