//
//  main.m
//  Lab3
//
//  Created by Naoki Mita on 2020-03-25.
//  Copyright © 2020 Naoki Mita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        ScoreKeeper *score = [ScoreKeeper new];
        QuestionManager *manager = [QuestionManager new];
        QuestionFactory *factory = [QuestionFactory new];
        while (YES) {
            Question *q = [factory generateRandomQuestion];
            NSLog(@"%@", q.question);
            [manager.questions addObject: q];
            NSString *strInput = [InputHandler getUserInput: 255 andPrompt: @""];
            if ([strInput isEqualToString:@"quit"]) { break; }
            if ([strInput integerValue] == q.answer) {
                score.right += 1;
                NSLog(@"Right!");
            } else {
                score.wrong += 1;
                NSLog(@"Wrong!");
            }
            NSLog(@"%@", [manager timeOutput]);
            [score print];
        }
    }
    return 0;
}
