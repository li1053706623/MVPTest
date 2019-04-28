//
//  DataModel.h
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataModel : NSObject

@property (nonatomic, strong) NSString * addtime;
@property (nonatomic, strong) NSString * idField;
@property (nonatomic, strong) NSString * money;
@property (nonatomic, strong) NSString * note;
@property (nonatomic, strong) NSString * orderno;
@property (nonatomic, strong) NSString * payMode;
@property (nonatomic, strong) NSString * userid;
@property (nonatomic, strong) NSString * username;
@property (nonatomic, strong) NSString * worker;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
