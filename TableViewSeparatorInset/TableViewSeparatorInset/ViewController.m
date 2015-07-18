//
//  ViewController.m
//  TableViewSeparatorInset
//
//  Created by 尹桥印 on 15/7/18.
//  Copyright (c) 2015年 EnjoySR. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ESSeparatorInset.h"

static NSString *identifier = @"cell";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    
    
    //Set tableView separator inset zero.
    [self setSeparatorInsetZeroWithTableView:self.tableView];
    //You can also do this：
    //[self setSeparatorInsetWithTableView:self.tableView inset:UIEdgeInsetsMake(0, 8, 0, 8)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.textLabel.text = [NSString stringWithFormat:@"我是第%ld条数据",indexPath.row];
    return cell;
}




@end
