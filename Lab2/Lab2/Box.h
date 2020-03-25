//
//  Box.h
//  Lab2
//
//  Created by Naoki Mita on 2020-03-24.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float weight;
@property (nonatomic, assign) float length;

- (instancetype)initHeight: (float) height andWeigth: (float) weight andLength: (float) length;
- (float) calcVolume;
- (float) canContainsNBox: (Box *) another;

@end

NS_ASSUME_NONNULL_END
