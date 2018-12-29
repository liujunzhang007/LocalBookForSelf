//
//  BaseViewController.h
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/27.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, assign) UIViewController *weakSelf;
@property (nonatomic,readonly) UIEdgeInsets safeAreaInsets API_AVAILABLE(ios(11.0),tvos(11.0));

@end

NS_ASSUME_NONNULL_END
