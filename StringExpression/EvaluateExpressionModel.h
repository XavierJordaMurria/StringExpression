//
//  EvaluateExpressionModel.h
//  StringExpression
//
//  Created by Xavier Jorda Murria on 12/04/2016.
//  Copyright © 2016 xjm. All rights reserved.
//

#ifndef EvaluateExpressionModel_h
#define EvaluateExpressionModel_h

#import <UIKit/UIKit.h>

@interface EvaluateExpressionModel : NSObject 

/**
 * Return a reference to the singleton EvaluateExpressionModel object.
 *
 * @return a reference to the singleton EvaluateExpressionModel
 */
+ (EvaluateExpressionModel *)sharedEvaluateExpressionModel;

/**
 * Translates a nstring to an expression and then evaluate it.
 *
 * @return a nsnumber result of the expression evaluation.
 */
- (NSNumber *)evaluateString:(NSString *)str_expr;

@end

#endif /* EvaluateExpressionModel_h */
