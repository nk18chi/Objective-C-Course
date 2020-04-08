//
//  Dice.m
//  Lab6
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self roll];
    }
    return self;
}

- (void) roll {
    _value = arc4random_uniform(6) + 1;
}

- (NSString *) getString {
    switch (_value) {
        case 1: return @"⚀";
        case 2: return @"⚁";
        case 3: return @"⚂";
        case 4: return @"⚃";
        case 5: return @"⚄";
        case 6: return @"⚅";
        default: return @"";
    }
}

@end
