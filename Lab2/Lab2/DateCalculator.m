//
//  DateCalculator.m
//  Lab2
//
//  Created by Naoki Mita on 2020-03-24.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator {
    float _myAge;
}

+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name {
    NSLog(@"Hello, %@. %@", name, message);
}

- (float) myAge {
    return _myAge;
}

- (void) setMyAge: (float) myAge {
    _myAge = myAge;
}


@end
