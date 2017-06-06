//
//  ViewController.m
//  fadingobjects
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


- (IBAction)Fadein:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [self.label setAlpha:1.0];
    [self.segnentcontrol setAlpha:1.0];
    [self.switchoutlet setAlpha:1.0];
    
    [UIView commitAnimations];
    
}

- (IBAction)Fadeout:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    [self.label setAlpha:0];
    [self.segnentcontrol setAlpha:0];
    [self.switchoutlet setAlpha:0];
    
    [UIView commitAnimations];
    

    
    
    
    
}

- (IBAction)whtspMyAlpha:(id)sender {
    
    if (self.label.alpha == 1){
        self.label2.text = @"the alpha is at 1";
        
    }else {
        self.label2.text = @"the alpha is at 0";
    }
    
    
    
    
    
}
@end
