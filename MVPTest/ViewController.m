//
//  ViewController.m
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "ViewController.h"
#import "UserViewProtocol.h"
#import "Presenter.h"
#import "HttpManager.h"
#import "TableViewProxy.h"


@interface ViewController ()<UserViewProtocol>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic,strong) NSArray<DataModel *> *friendlyUIData;
@property (nonatomic, strong) TableViewProxy *tableViewProxy;
@property (nonatomic,strong) Presenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.view addSubview:self.tableView];
    [self.presenter fetchData];
}

- (void)userViewDataSource:(NSMutableArray<DataModel *> *)data{
    self.friendlyUIData = data;
    self.tableViewProxy.dataArray = data;
    [self.tableView reloadData];
}


#pragma mark---getting
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.dataSource = self.tableViewProxy;
        _tableView.delegate = self.tableViewProxy;
    }
    return _tableView;
}
- (Presenter *)presenter {
    if (_presenter == nil) {
        _presenter = [[Presenter alloc] init];
        [_presenter attachView:self];
    }
    return _presenter;
}

-(TableViewProxy *)tableViewProxy{
    if (!_tableViewProxy) {
        _tableViewProxy = [[TableViewProxy alloc]init];
    }
    return _tableViewProxy;
}
@end
