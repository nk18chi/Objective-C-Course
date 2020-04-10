//
//  KitchenDelegate.h
//  Lab11
//
//  Created by Naoki Mita on 2020-04-09.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

@class Kitchen;

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
