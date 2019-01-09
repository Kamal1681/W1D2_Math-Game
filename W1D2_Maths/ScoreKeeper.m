//
//  ScoreKeeper.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "AddingQuestion.h"

@implementation ScoreKeeper
-(instancetype)initWithCounts{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}
-(NSString *) scoreReport: (NSString *) input : (NSInteger) answer{

    NSString * report;

        if ([input isEqualToString:@"quit"]){
            float percentage = ((float)self.rightCount / ((float)self.rightCount + (float)self.wrongCount)) * 100;
            report = [[[[[[@"score: " stringByAppendingString:[NSString stringWithFormat:@"%i",self.rightCount]]stringByAppendingString:@" right, "]stringByAppendingString:[NSString stringWithFormat:@"%i",self. wrongCount]]stringByAppendingString:@" wrong --- "]stringByAppendingString:[NSString stringWithFormat:@"%f", percentage]]stringByAppendingString:@" %"];
        }
        else if([input integerValue] == answer){
            report = @"Right!\n";
            [self setRightCount:(self.rightCount + 1)];
        }
        else {
            report = @"Wrong!\n";
            [self setWrongCount:(self.wrongCount + 1)];
        }
        return report;
}
@end
