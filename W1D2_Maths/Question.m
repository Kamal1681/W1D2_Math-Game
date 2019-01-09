//
//  AddingQuestion.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-08.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _rightValue = 10 + arc4random_uniform(90);
        _leftValue = 10 + arc4random_uniform(90);
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime{
    
    return [_endTime timeIntervalSinceDate:_startTime];
}
- (void) generateQuestion{
    
}
@end
