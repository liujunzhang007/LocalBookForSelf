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
- (void)configuration{

}
- (void)setSearchControllerDelegate:(BaseTableViewDelegate *)delegate{
    _searchController = [[LeonBaseSearchController alloc]initWithSearchResultsController:nil];
    _searchController.view.frame = self.frame;
    self.tableHeaderView =_searchController.searchBar;
    _searchController.delegate = delegate;
    _searchController.searchResultsUpdater = delegate;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

