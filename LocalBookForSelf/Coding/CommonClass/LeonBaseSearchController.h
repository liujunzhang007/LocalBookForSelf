//
//  MainPageSearchController.h
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/29.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "BaseSearchController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LeonBaseSearchController : BaseSearchController
@property (nonatomic, strong) UITextField *searchField;
@property (nonatomic, strong) UIButton *searchCancelButton;
@end

NS_ASSUME_NONNULL_END
