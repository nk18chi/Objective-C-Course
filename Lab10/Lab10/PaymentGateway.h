//
//  PaymentGateway.h
//  Lab10
//
//  Created by Naoki Mita on 2020-04-08.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject
- (void) processPaymentAmount:(NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
