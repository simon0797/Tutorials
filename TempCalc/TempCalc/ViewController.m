//
//  ViewController.m
//  TempCalc
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


- (IBAction)calculate:(id)sender {
    
    
    [self resignFirstResponder];
    
    if (self.segcontrol.selectedSegmentIndex == 0) {
        double fahrenheit = [self.textfield.text doubleValue];
        double celsius = (fahrenheit - 32)/1.8;
        
        self.templabel.text = [NSString stringWithFormat:@"%4.1f celsius",celsius];
        
        if (celsius > 120){
            self.tempimage.image = [UIImage imageNamed:@"Temp9.png"];
        }
        else if (celsius >90){
            self.tempimage.image = [UIImage imageNamed:@"Temp8.png"];

        }
        else if (celsius >60){
            self.tempimage.image = [UIImage imageNamed:@"Temp7.png"];
            
        }
        else if (celsius >40){
            self.tempimage.image = [UIImage imageNamed:@"Temp6.png"];
        
        }
        else if (celsius >20){
            self.tempimage.image = [UIImage imageNamed:@"Temp5.png"];
            
        }
        else if (celsius >0){
            self.tempimage.image = [UIImage imageNamed:@"Temp4.png"];
            
        }
        else if (celsius >-20){
            self.tempimage.image = [UIImage imageNamed:@"Temp3.png"];
            
        }
        else if (celsius >-20){
            self.tempimage.image = [UIImage imageNamed:@"Temp1.png"];
            
        }
        
        
    }
    if (self.segcontrol.selectedSegmentIndex ==1) {
        double celsius = [self.textfield.text doubleValue];
        double fahrenheit = celsius * 1.8 + 32;
        self.templabel.text = [NSString stringWithFormat:@"%4.1f fahrenheit",fahrenheit];
        
        if (fahrenheit > 160){
            self.tempimage.image = [UIImage imageNamed:@"Temp9.png"];
        }
        else if (fahrenheit >140){
            self.tempimage.image = [UIImage imageNamed:@"Temp8.png"];
            
        }
        else if (fahrenheit >100){
            self.tempimage.image = [UIImage imageNamed:@"Temp7.png"];
            
        }
        else if (fahrenheit >80){
            self.tempimage.image = [UIImage imageNamed:@"Temp6.png"];
            
        }
        else if (fahrenheit >60){
            self.tempimage.image = [UIImage imageNamed:@"Temp5.png"];
            
        }
        else if (fahrenheit >40){
            self.tempimage.image = [UIImage imageNamed:@"Temp4.png"];
            
        }
        else if (fahrenheit >20){
            self.tempimage.image = [UIImage imageNamed:@"Temp3.png"];
            
        }
        else if (fahrenheit >20){
            self.tempimage.image = [UIImage imageNamed:@"Temp1.png"];
              
        }

        
    }
    
    
}

- (IBAction)switchconv:(id)sender {
    if (self.segcontrol.selectedSegmentIndex ==0) {
        self.enterlabel.text =  @"Enter Fahrenheit";
        self.textfield.text = @"";
        self.templabel.text = @"0 Fahrenheit";
    }

    if (self.segcontrol.selectedSegmentIndex ==1) {
        self.enterlabel.text =  @"Enter celsius";
        self.textfield.text = @"";
        self.templabel.text = @"0 celsius";
    }
    

    
}
@end
