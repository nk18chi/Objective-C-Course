//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;
- (void) print;
@end

NS_ASSUME_NONNULL_END
