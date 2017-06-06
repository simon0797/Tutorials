//
//  ViewController.m
//  Calculator
//
//  Created by Simon Arida on 5/30/17.
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


- (IBAction)DigitPressed:(id)sender {
    
    currentnumber = currentnumber *10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat:@"%2.0f", currentnumber];
    
}

- (IBAction)operationPressed:(id)sender {
    
    if (currentoperation == 0) result = currentnumber;
    else {
        switch (currentoperation) {
            case 1:
                result = result + currentnumber;
                break;
            case 2: result = result - currentnumber;
                break;
            case 3: result = result * currentnumber;
                break;
            case 4: result = result / currentnumber;
                break;
                
            default:
                break;
        }
    }
    currentnumber = 0;
    self.label.text = [NSString stringWithFormat:@"%2.0f",result];
    if ([sender tag] == 0) result = 0;{
        currentoperation = (int)[sender tag];
    }
   
    
}

- (IBAction)cancelPressed:(id)sender {
    
    currentnumber = 0 ;
    self.label.text = @"0";
    
    
    
}
@end
