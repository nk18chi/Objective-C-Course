//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (void) print {
    NSLog(@"score: %d right, %d wrong ---- %.1f%%", self.right, self.wrong, (float) self.right / (self.right + self.wrong) * 100);
}

@end
