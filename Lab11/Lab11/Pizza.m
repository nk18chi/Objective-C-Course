//
//  Pizza.m
//  Lab8
//
//  Created by Naoki Mita on 2020-04-05.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza*) largePepperoni {
    return [[Pizza alloc] initWithSize:LARGE andToppings:@[@"sarami", @"mozzeralla", @"ham", @"basil"]];
}
+ (Pizza*) meatLoversWithSize: (PizzaSize) size {
    return [[Pizza alloc] initWithSize:size andToppings:@[@"meat", @"meat", @"meat"]];
}
@end
