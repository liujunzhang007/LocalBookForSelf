//
//  MainPageTableViewDelegate.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/28.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "MainPageTableViewDelegate.h"

@implementation MainPageTableViewDelegate{
    
    NSMutableArray *dataArray;
}
-(instancetype)init{
    if (self = [super init]) {
        dataArray = [[NSMutableArray alloc]init];
        NSDictionary *tempDict = @{@"title":@"title",@"subTitle":@"subTitle"};
        for (int i = 0; i<10; i++) {
            [dataArray addObject:tempDict];
        }
    }
    return self;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainPageTableViewDelegate"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainPageTableViewDelegate"];
        NSDictionary *dict = dataArray[indexPath.row];
        cell.textLabel.text = dict[@"title"];
        cell.textLabel.textColor = [UIColor blueColor];
    }
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return dataArray.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 56;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];    
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}
@end
