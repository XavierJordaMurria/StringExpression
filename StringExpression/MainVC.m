//
//  ViewController.m
//  StringExpression
//
//  Created by Xavier Jorda Murria on 12/04/2016.
//  Copyright © 2016 xjm. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

@synthesize result = _result;
@synthesize str_expression = _str_expression;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    
    gestureRecognizer.cancelsTouchesInView = NO; //so that action such as clear text field button can be pressed
    [self.view addGestureRecognizer:gestureRecognizer];
    
    _evaluateExpression = [EvaluateExpressionModel sharedEvaluateExpressionModel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)evaluateBt:(id)sender
{
    _result.text =  [[_evaluateExpression evaluateString:_str_expression.text] stringValue];
}
- (IBAction)infoBt:(id)sender
{
    NSString *msg = @"This app evaluates a string expression consisting of positive integers and the +, -, /,* operands only,taking into account normal mathematical rules of operator precedence. No brackets or support for input variables is required.\nFor example:\nan input string of '4+5*2' should output 14\nan input string of '4+5/2' should output 6.5\nan input string of '4+5/2-1' should output 5.5";
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertController *alert=   [UIAlertController
                                  alertControllerWithTitle:@"App overview"
                                  message:msg
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - private methods

- (void) hideKeyboard
{
    [self.view endEditing:YES];
}

@end
