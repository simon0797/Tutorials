//
//  ViewController.m
//  FactBank
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
    
    [self.label.layer setCornerRadius:20.0];
    self.label.clipsToBounds = YES;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)randomfact:(id)sender {
    
    NSArray *facts = @[@"Bagning your head against a wall burns 150 calories an hour.",
                       @"When hippos are upset, their sweat turns red.",
                       @"A floc of crows is known as a murder.",
                       @"Human saliva has a boiling point three times that of regular water."];
    int randword = arc4random() % facts.count;
    
    self.label.text = facts[randword];
    
}
@end
