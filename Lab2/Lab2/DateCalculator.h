//
//  DateCalculator.h
//  Lab2
//
//  Created by Naoki Mita on 2020-03-24.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject
+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name;
- (void) setMyAge: (float) myAge;
- (float) myAge;

@end

NS_ASSUME_NONNULL_END
