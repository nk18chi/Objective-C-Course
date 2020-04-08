//
//  FoodTypeCharge.m
//  Lab9
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "FoodTypeCharge.h"

@implementation FoodTypeCharge
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString: @"shortbread"]) {
        return 543.21;
    }
    return 111.111;
}
@end
