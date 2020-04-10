//
//  DeliveryService.h
//  Lab12
//
//  Created by Naoki Mita on 2020-04-10.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray *historyOrder;

- (void) deliverPizza:(Pizza *)pizza;
- (NSArray *) getHistoryOrder;
@end

NS_ASSUME_NONNULL_END
