//
//  QuestionFactory.m
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-09.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self generateRandomQuestion];
//    }
//    return self;
//}
- (Question *) generateRandomQuestion {
    
    NSArray * questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplyQuestion", @"DivideQuestion"];
    
    int selection = arc4random_uniform(3);
   
    NSString * className;
    className = [questionSubclassNames objectAtIndex:selection];

    
    return [[NSClassFromString(className) alloc]init];
}
@end
