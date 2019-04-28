//
//  Presenter.m
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "Presenter.h"
#import "HttpManager.h"

@interface Presenter()

@property (nonatomic, weak) id<UserViewProtocol> attachView;

@end

@implementation Presenter

-(void)attachView:(id<UserViewProtocol>)view{
    self.attachView = view;
}
-(void)fetchData{
    [self getUserDatas];
}

-(void)getUserDatas{
    [HttpManager postWithURLString:@"http://administrator.copy.im/newdabao.php/mobile/downorder?firstrow=0&listrow=20" parameters:nil success:^(NSDictionary *responseObject) {
//        NSLog(@"-----%@",responseObject);
        NSArray *userArr = [responseObject objectForKey:@"data"];
        [self.attachView userViewDataSource:[self processOriginDataToUIFriendlyData:userArr]];
        
    } failure:^(NSError *error) {
        
    }];
}

- (NSMutableArray<DataModel *> *)processOriginDataToUIFriendlyData:(NSArray *)originData{
    NSMutableArray<DataModel *> *friendlyUIData = [NSMutableArray array];
    for (NSDictionary *dict in originData) {
        DataModel *model = [[DataModel alloc]initWithDictionary:dict];
        [friendlyUIData addObject:model];
    }
    return friendlyUIData;
}
@end
