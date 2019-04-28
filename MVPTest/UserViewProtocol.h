//
//  UserViewProtocol.h
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModel.h"

@protocol UserViewProtocol <NSObject>

-(void)userViewDataSource:(NSMutableArray<DataModel *> *)data;


@end

