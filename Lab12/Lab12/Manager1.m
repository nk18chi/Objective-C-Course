//
//  Manager1.m
//  Lab11
//
//  Created by Naoki Mita on 2020-04-09.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "Manager1.h"

@implementation Manager1

- (instancetype)initDeliveryService:(DeliveryService *)deliveryService {
    self = [super init];
    if (self) {
        _deliveryService = deliveryService;
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings; {
    for (NSString *t in toppings) {
        if ([t isEqualToString:@"anchovie"]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    [_deliveryService deliverPizza:pizza];
}

@end
