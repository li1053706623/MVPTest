//
//  Presenter.h
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserViewProtocol.h"
#import "DataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Presenter : NSObject

- (void)attachView:(id <UserViewProtocol>)view;

- (void)fetchData;

@end

NS_ASSUME_NONNULL_END
