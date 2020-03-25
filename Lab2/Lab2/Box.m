//
//  Box.m
//  Lab2
//
//  Created by Naoki Mita on 2020-03-24.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initHeight: (float) height andWeigth: (float) weight andLength: (float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _weight = weight;
        _length = length;
    }
    return self;
}

- (float) calcVolume {
    return _height * _weight * _length;
}

- (float) canContainsNBox: (Box *) another {
    return self.calcVolume / another.calcVolume;
}

@end
