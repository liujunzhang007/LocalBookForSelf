//
//  BaseTableViewDelegate.m
//  LocalBookForSelf
//
//  Created by 刘俊彰 on 2018/12/28.
//  Copyright © 2018 刘俊彰. All rights reserved.
//

#import "BaseTableViewDelegate.h"

@implementation BaseTableViewDelegate
-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BaseTableViewDelegate"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BaseTableViewDelegate"];
    }
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 0;
}

@end
