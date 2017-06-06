//
//  ViewController.m
//  functions
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setText:(id)sender {
    self.label.text = @"Hello";
    self.txtview.text = self.txtfeild.text;
    [self resignFirstResponder];
}

- (IBAction)setaColor:(id)sender {
    self.label2.textColor = [UIColor redColor];
}

- (IBAction)fontSize:(id)sender {
    [self.label2 setFont:[UIFont fontWithName:@"Verdana" size:30]];

    }

- (IBAction)shadowColor:(id)sender {
    self.label2.layer.shadowColor = [[UIColor blueColor]CGColor];
   }

- (IBAction)right:(id)sender {
    self.label2.textAlignment = NSTextAlignmentRight;
}

- (IBAction)setBackground:(id)sender {
    self.label2.backgroundColor = [UIColor blackColor];

}

- (IBAction)setShadow:(id)sender {
    self.label2.layer.shadowColor = [[UIColor blackColor]CGColor];
    self.label2.layer.shadowOpacity = 0.5;
    self.label2.layer.shadowRadius = 1.0f;
    self.label2.layer.shadowOffset = CGSizeMake(2, 2);
}

- (IBAction)left:(id)sender {
    self.label2.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)center:(id)sender {
    self.label2.textAlignment = NSTextAlignmentCenter;

}

- (IBAction)customfont:(id)sender {
    [self.label2 setFont:[UIFont fontWithName:@"DeathtoMetal" size:50]];
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound){
        return YES;
    }
    [textView resignFirstResponder];
    return NO;
}
@end
