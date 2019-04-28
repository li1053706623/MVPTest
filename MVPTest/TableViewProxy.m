//
//  TableViewProxy.m
//  MVPTest
//
//  Created by Apple on 2019/4/28.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "TableViewProxy.h"

#import "DataModel.h"

@implementation TableViewProxy

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    
    DataModel *model = self.dataArray[indexPath.row];
    cell.textLabel.text = model.username;
//    cell.detailTextLabel.text = model.money;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

@end
