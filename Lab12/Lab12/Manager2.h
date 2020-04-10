//
//  Manager2.h
//  Lab11
//
//  Created by Naoki Mita on 2020-04-09.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager2 : NSObject <KitchenDelegate>
@property (nonatomic) DeliveryService *deliveryService;
- (instancetype)initDeliveryService:(DeliveryService *)deliveryService;
@end

NS_ASSUME_NONNULL_END
