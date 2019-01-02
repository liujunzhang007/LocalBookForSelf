//
//  BaseTableView.h
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/29.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableView : UITableView
@property (nonatomic, strong) LeonBaseSearchController *searchController;
@property (nonatomic, assign) int clickedCount;

- (void)setSearchControllerDelegate:(BaseTableViewDelegate*)delegate;
@end
NS_ASSUME_NONNULL_END
