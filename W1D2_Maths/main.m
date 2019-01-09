//
//  main.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddingQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper * getScore = [[ScoreKeeper alloc]init];
        while(gameOn){
            
            NSLog(@"MATHs!");
        
            AddingQuestion * mathQuestion = [[AddingQuestion alloc]init];
            NSLog(@"%@", [mathQuestion question]);
        
            NSString * input = [InputHandler parseInput];
            
            NSString * report = [getScore scoreReport:input :[mathQuestion answer]];
            NSLog(@"%@", report);
            if ([input isEqualToString:@"quit"]){
                gameOn = NO;
            }
        }
    return 0;
    }
}
