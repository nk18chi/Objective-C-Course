//
//  Pizza.h
//  Lab8
//
//  Created by Naoki Mita on 2020-04-05.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PizzaSize) {
    SMALL,
    MEDIUM,
    LARGE
};

@interface Pizza : NSObject
@property (nonatomic) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings;
+ (Pizza*) largePepperoni;
+ (Pizza*) meatLoversWithSize: (PizzaSize) size;
@end

NS_ASSUME_NONNULL_END
