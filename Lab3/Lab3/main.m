//
//  main.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        ScoreKeeper *score = [ScoreKeeper new];
        while (YES) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSLog(@"%@", q.question);
            NSString *strInput = [InputHandler getUserInput: 255 andPrompt: @"Answer the question: ('quit' to quit )"];
            if ([strInput isEqualToString:@"quit"]) { break; }
            if ([strInput integerValue] == q.answer) {
                score.right += 1;
                NSLog(@"Right!");
            } else {
                score.wrong += 1;
                NSLog(@"Wrong!");
            }
            [score print];
        }
    }
    return 0;
}
