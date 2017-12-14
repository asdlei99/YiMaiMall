//
//  LDShopOfflineController.m
//  YIMaiMall
//
//  Created by Miles on 2017/12/1.
//  Copyright © 2017年 Miles. All rights reserved.
//

#import "LDShopOfflineController.h"
#import "LDSaveShopOfflineCell.h"

@interface LDShopOfflineController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LDShopOfflineController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initTableView];
}

-(void)initTableView
{
    self.aTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.aTableView.delegate  = self;
    self.aTableView.dataSource  = self;
    [self.view addSubview:self.aTableView];
    
    [self registerCell];
}
-(void)registerCell{
    
    [self.aTableView registerNib:[UINib nibWithNibName:@"LDSaveShopOfflineCell" bundle:nil] forCellReuseIdentifier:@"LDSaveShopOfflineCell"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return SIZEFIT(90);
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LDSaveShopOfflineCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LDSaveShopOfflineCell"];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


@end