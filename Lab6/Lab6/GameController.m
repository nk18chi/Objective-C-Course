//
//  GameController.m
//  Lab6
//
//  Created by Naoki Mita on 2020-04-07.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#import "InputHandler.h"

@implementation GameController
- (instancetype)init {
    self = [super init];
    if (self) {
        _dices = @[
             [Dice new],
             [Dice new],
             [Dice new],
             [Dice new],
             [Dice new]
        ];
        _heldDices = [NSMutableArray new];
    }
    return self;
}

- (void) start {
    NSLog(@"game start!");
    while (YES) {
         NSString *input = [InputHandler initInputHandler: 255 andPrompt:@""];
         if ([input isEqual:@"quit"]) { break; }
         if ([input isEqual:@"roll"]) {
             for (Dice *d in _dices) {
                 [d roll];
                 NSLog(@"%@", d.getString);
             }
         }
     }
}
@end
