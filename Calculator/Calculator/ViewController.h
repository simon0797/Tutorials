//
//  ViewController.h
//  Calculator
//
//  Created by Simon Arida on 5/30/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int currentoperation;
    float result;
    float currentnumber;
    
    
    
}
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)DigitPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;

@end

