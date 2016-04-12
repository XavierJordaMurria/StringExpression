//
//  EvaluateExpressionModel.m
//  StringExpression
//
//  Created by Xavier Jorda Murria on 12/04/2016.
//  Copyright © 2016 xjm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EvaluateExpressionModel.h"

@interface EvaluateExpressionModel ()

@end

@implementation EvaluateExpressionModel

+ (EvaluateExpressionModel *)sharedEvaluateExpressionModel
{
    static EvaluateExpressionModel    *sharedModel = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken,
                  ^{
                      sharedModel = [[self alloc] init];
                  });
    
    return sharedModel;
}

- (NSNumber *)evaluateString:(NSString *)str_expr
{
    NSExpression *expression = [NSExpression expressionWithFormat:str_expr];
    NSNumber *result = [expression expressionValueWithObject:nil context:nil];
    
    return result;
}

@end