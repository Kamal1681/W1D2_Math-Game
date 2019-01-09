//
//  main.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper * getScore = [[ScoreKeeper alloc]init];
        QuestionManager * questionsCollection = [[QuestionManager alloc]init];
        QuestionFactory * questionGeneration = [[QuestionFactory alloc]init];
        
        while(gameOn){
            
            NSLog(@"MATHs!");
        
            //Question * mathQuestion = [[Question alloc]init];
            Question * mathQuestion = [questionGeneration generateRandomQuestion];
            
            NSLog(@"%@", [mathQuestion question]);
            [[questionsCollection questions]addObject:mathQuestion];
            NSString * input = [InputHandler parseInput];
            
            NSString * report = [getScore scoreReport:input :[mathQuestion answer]];
            NSLog(@"%.1f", [mathQuestion answerTime]);
            NSLog(@"%@", report);
            if ([input isEqualToString:@"quit"]){
                gameOn = NO;
                [[questionsCollection questions]removeObject:mathQuestion];
            }
        }
        NSLog(@"%@", [questionsCollection timOutput]);
    return 0;
    }
}
