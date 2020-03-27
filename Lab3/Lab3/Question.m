//
//  Question.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (void) generateQuestion {
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate: self.startTime];
}

@end
