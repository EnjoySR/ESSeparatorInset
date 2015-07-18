//
//  UIViewController+ESSeparatorInset.h
//  TableViewSeparatorInset
//
//  Created by 尹桥印 on 15/7/18.
//  Copyright (c) 2015年 EnjoySR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ESSeparatorInset)


- (void)setSeparatorInsetZeroWithTableView:(UITableView *)tableView;

- (void)setSeparatorInsetWithTableView:(UITableView *)tableView inset:(UIEdgeInsets)inset;

/*
 If you want to implement 'tableView:willDisplayCell:forRowAtIndexPath:' for 
 tableview delegate,you should use this method.
 */
- (void)es_tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;

@end
