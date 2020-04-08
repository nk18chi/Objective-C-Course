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
         for (Dice *d in _dices) {
             if ([_heldDices containsObject: d]) {
                 NSLog(@"[%@]", d.getString);
             } else {
                 NSLog(@"%@", d.getString);
             }
         }
        
         NSString *input = [InputHandler initInputHandler: 255 andPrompt:@""];
         if ([input isEqual: @"quit"]) { break; }
         if ([input isEqual: @"roll"]) {
             for (Dice *d in _dices) {
                 if ([_heldDices containsObject: d]) {
                     continue;
                 }
                 [d roll];
             }
         }
         if ([input isEqual: @"hold"]) {
             while(YES) {
                 NSInteger number = [[InputHandler initInputHandler: 255 andPrompt:@"if you want to fiinish, type '0'."] intValue];
                 if (number > 0 && number < 6) {
                     [self holdDie:number - 1];
                 } else {
                     NSLog(@"finish hold.");
                     break;
                 }
             }
         }
        
     }
}

- (void) holdDie:(NSInteger) index {
    if ([_heldDices containsObject: _dices[index]]) {
        NSLog(@"the number is alreday held.");
    } else {
        [_heldDices addObject: _dices[index]];
    }
}
@end
