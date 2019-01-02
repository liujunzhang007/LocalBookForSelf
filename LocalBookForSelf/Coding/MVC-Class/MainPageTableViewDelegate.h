//
//  MainPageTableViewDelegate.h
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/28.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "BaseTableViewDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainPageTableViewDelegate : BaseTableViewDelegate
@property (nonatomic, copy) void (^clickBlock)(id object);
@property (nonatomic, copy) void (^didSelectedBlock)(id object);
@end

NS_ASSUME_NONNULL_END
