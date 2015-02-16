//
//  ViewController.m
//  Quiz
//
//  Created by Byrdann Fox on 2/15/15.
//  Copyright (c) 2015 ExcepApps, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.questions = @[@"What does death fell like?",
                       @"What is 20 + 4 equal?",
                       @"Is Objective-C better than Swift?"];
    
    self.answers = @[@"Lonely",
                     @"24",
                     @"No, Swift is way better!"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender
{
    
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        
        self.currentQuestionIndex = 0;
        
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender
{
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
    
}

@end