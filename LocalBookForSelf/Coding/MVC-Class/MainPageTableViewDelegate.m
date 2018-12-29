//
//  MainPageTableViewDelegate.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/28.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "MainPageTableViewDelegate.h"

@implementation MainPageTableViewDelegate{
    NSMutableArray *sectionArray;
    NSMutableArray *dataArray;
}
-(instancetype)init{
    if (self = [super init]) {
        dataArray = [[NSMutableArray alloc]init];
        sectionArray = [[NSMutableArray alloc]init];
        NSDictionary *tempDict = @{@"title":@"title",@"subTitle":@"subTitle"};
        NSMutableArray *rowArray = [[NSMutableArray alloc]init];
        for (int i = 0; i<5; i++) {
            [rowArray addObject:tempDict];
        }
        for (int j = 0; j < 2; j++) {
            [sectionArray addObject:tempDict];
            [dataArray addObject:rowArray];
        }
    }
    return self;
}
#pragma mark -
#pragma mark - ActionMethod

-(void)selectorAction:(UITapGestureRecognizer *)tap{
    MyLog(@"selectorAction");
}
#pragma mark -
#pragma mark - UITableViewDelegate

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainPageTableViewDelegate"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainPageTableViewDelegate"];
        NSDictionary *dict = dataArray[indexPath.section][indexPath.row];
        cell.textLabel.text = dict[@"title"];
        cell.textLabel.textColor = [UIColor blueColor];
    }
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSArray *rowArr = dataArray[section];
    return rowArr.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return dataArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 56;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    NSDictionary *dict = sectionArray[section];
    UIView *headSectionView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
    headSectionView.backgroundColor = [UIColor yellowColor];
    LeonBaseLabel *headTitleLabel = [[LeonBaseLabel alloc]init];
    headTitleLabel.text = dict[@"subTitle"];
    headTitleLabel.textColor = [UIColor redColor];
    headTitleLabel.edgeInsets = UIEdgeInsetsMake(0.f, 15.f, 0.f, 0.f);
    [headSectionView addSubview:headTitleLabel];
    [headTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(headSectionView);
        make.size.equalTo(headSectionView);
    }];
    SEL action = @selector(selectorAction:);
    UITapGestureRecognizer *tableHeadTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:action];
    [headSectionView addGestureRecognizer:tableHeadTap];
    
    /*
     SEL 高级应用
     //[self performSelector:action];//#warning performSelector may cause a leak because its selector is unknown
    if ([self respondsToSelector:action]){
        //    [target performSelector:callback withObject:nil];
        IMP imp = [self methodForSelector:action];
        void (*func)(id, SEL) = (void *)imp;
        func(self, action);
    }

    SEL selector = NSSelectorFromString(@"processRegion:ofView:");
    IMP imp = [self methodForSelector:selector];
    CGRect (*func)(id, SEL, CGRect, UIView *) = (void *)imp;
    CGRect result = self ? func(self, selector, CGRectMake(0, 0, 0, 0), [[UIView alloc]init]) : CGRectZero;
     
     static SEL selectorAction(UITapGestureRecognizer *tap){
     
     return nil;
     }
    */

    return headSectionView;
    
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSDictionary *dict = sectionArray[section];
    return dict[@"subTitle"];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];    
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


#pragma mark -
#pragma mark - UISearchControllerDelegate

- (void)willPresentSearchController:(UISearchController *)searchController{
    MyLog(@"willPresentSearchController");
}
- (void)didPresentSearchController:(UISearchController *)searchController{
    MyLog(@"didPresentSearchController");
}
- (void)willDismissSearchController:(UISearchController *)searchController{
    MyLog(@"willDismissSearchController");
}
- (void)didDismissSearchController:(UISearchController *)searchController{
    MyLog(@"didDismissSearchController");
}
- (void)presentSearchController:(UISearchController *)searchController{
    MyLog(@"presentSearchController");
}

#pragma mark -
#pragma mark - UISearchResultsUpdating

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    
}
@end
