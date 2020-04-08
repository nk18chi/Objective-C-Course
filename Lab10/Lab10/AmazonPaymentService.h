//
//  AmazonPaymentService.h
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
