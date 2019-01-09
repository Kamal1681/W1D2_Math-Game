//
//  QuestionFactory.h
//  W1D2_Maths
//
//  Created by Kamal Maged on 2019-01-09.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractingQuestion.h"
#import "MultiplyQuestion.h"
#import "DivideQuestion.h"
NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
- (Question *) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
