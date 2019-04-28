//
//  DataModel.m
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "DataModel.h"

NSString *const kDataAddtime = @"addtime";
NSString *const kDataIdField = @"id";
NSString *const kDataMoney = @"money";
NSString *const kDataNote = @"note";
NSString *const kDataOrderno = @"orderno";
NSString *const kDataPayMode = @"pay_mode";
NSString *const kDataUserid = @"userid";
NSString *const kDataUsername = @"username";
NSString *const kDataWorker = @"worker";

@implementation DataModel

/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kDataAddtime] isKindOfClass:[NSNull class]]){
        self.addtime = dictionary[kDataAddtime];
    }
    if(![dictionary[kDataIdField] isKindOfClass:[NSNull class]]){
        self.idField = dictionary[kDataIdField];
    }
    if(![dictionary[kDataMoney] isKindOfClass:[NSNull class]]){
        self.money = dictionary[kDataMoney];
    }
    if(![dictionary[kDataNote] isKindOfClass:[NSNull class]]){
        self.note = dictionary[kDataNote];
    }
    if(![dictionary[kDataOrderno] isKindOfClass:[NSNull class]]){
        self.orderno = dictionary[kDataOrderno];
    }
    if(![dictionary[kDataPayMode] isKindOfClass:[NSNull class]]){
        self.payMode = dictionary[kDataPayMode];
    }
    if(![dictionary[kDataUserid] isKindOfClass:[NSNull class]]){
        self.userid = dictionary[kDataUserid];
    }
    if(![dictionary[kDataUsername] isKindOfClass:[NSNull class]]){
        self.username = dictionary[kDataUsername];
    }
    if(![dictionary[kDataWorker] isKindOfClass:[NSNull class]]){
        self.worker = dictionary[kDataWorker];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.addtime != nil){
        dictionary[kDataAddtime] = self.addtime;
    }
    if(self.idField != nil){
        dictionary[kDataIdField] = self.idField;
    }
    if(self.money != nil){
        dictionary[kDataMoney] = self.money;
    }
    if(self.note != nil){
        dictionary[kDataNote] = self.note;
    }
    if(self.orderno != nil){
        dictionary[kDataOrderno] = self.orderno;
    }
    if(self.payMode != nil){
        dictionary[kDataPayMode] = self.payMode;
    }
    if(self.userid != nil){
        dictionary[kDataUserid] = self.userid;
    }
    if(self.username != nil){
        dictionary[kDataUsername] = self.username;
    }
    if(self.worker != nil){
        dictionary[kDataWorker] = self.worker;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.addtime != nil){
        [aCoder encodeObject:self.addtime forKey:kDataAddtime];
    }
    if(self.idField != nil){
        [aCoder encodeObject:self.idField forKey:kDataIdField];
    }
    if(self.money != nil){
        [aCoder encodeObject:self.money forKey:kDataMoney];
    }
    if(self.note != nil){
        [aCoder encodeObject:self.note forKey:kDataNote];
    }
    if(self.orderno != nil){
        [aCoder encodeObject:self.orderno forKey:kDataOrderno];
    }
    if(self.payMode != nil){
        [aCoder encodeObject:self.payMode forKey:kDataPayMode];
    }
    if(self.userid != nil){
        [aCoder encodeObject:self.userid forKey:kDataUserid];
    }
    if(self.username != nil){
        [aCoder encodeObject:self.username forKey:kDataUsername];
    }
    if(self.worker != nil){
        [aCoder encodeObject:self.worker forKey:kDataWorker];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.addtime = [aDecoder decodeObjectForKey:kDataAddtime];
    self.idField = [aDecoder decodeObjectForKey:kDataIdField];
    self.money = [aDecoder decodeObjectForKey:kDataMoney];
    self.note = [aDecoder decodeObjectForKey:kDataNote];
    self.orderno = [aDecoder decodeObjectForKey:kDataOrderno];
    self.payMode = [aDecoder decodeObjectForKey:kDataPayMode];
    self.userid = [aDecoder decodeObjectForKey:kDataUserid];
    self.username = [aDecoder decodeObjectForKey:kDataUsername];
    self.worker = [aDecoder decodeObjectForKey:kDataWorker];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    DataModel *copy = [DataModel new];
    
    copy.addtime = [self.addtime copy];
    copy.idField = [self.idField copy];
    copy.money = [self.money copy];
    copy.note = [self.note copy];
    copy.orderno = [self.orderno copy];
    copy.payMode = [self.payMode copy];
    copy.userid = [self.userid copy];
    copy.username = [self.username copy];
    copy.worker = [self.worker copy];
    
    return copy;
}

@end
