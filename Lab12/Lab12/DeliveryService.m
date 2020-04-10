//
//  DeliveryService.m
//  Lab12
//
//  Created by Naoki Mita on 2020-04-10.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init {
    self = [super init];
    if (self) {
        _historyOrder = [NSMutableArray new];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [[DeliveryCar new] deliverPizza:pizza];
    NSString * pizzaInfo = [NSString stringWithFormat:@"size: %@, toppings: %@", pizza.getSizeStr, [pizza.toppings componentsJoinedByString:@","]];
    [_historyOrder addObject:pizzaInfo];
}

- (NSArray *) getHistoryOrder {
    return _historyOrder;
}
@end
