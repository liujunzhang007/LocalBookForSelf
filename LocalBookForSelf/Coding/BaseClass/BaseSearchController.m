//
//  BaseSearchController.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/29.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "BaseSearchController.h"

@interface BaseSearchController ()

@end

@implementation BaseSearchController
- (instancetype)initWithSearchResultsController:(UIViewController *)searchResultsController{
    if (self = [super initWithSearchResultsController:searchResultsController]) {
        [self configurationDefault];
    }
    return self;
}
- (instancetype)init{
    if (self = [super init]) {
        [self configurationDefault];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self configurationDefault];
    }
         return self;
}
- (void)configurationDefault{
    self.edgesForExtendedLayout = UIRectEdgeNone;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
