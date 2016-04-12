//
//  ViewController.h
//  StringExpression
//
//  Created by Xavier Jorda Murria on 12/04/2016.
//  Copyright © 2016 xjm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EvaluateExpressionModel.h"

@interface MainVC : UIViewController
{
    EvaluateExpressionModel *_evaluateExpression;
}

@property (weak, nonatomic) IBOutlet UITextField *str_expression;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

