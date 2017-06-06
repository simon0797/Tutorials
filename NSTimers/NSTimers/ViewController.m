//
//  ViewController.m
//  NSTimers
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


- (IBAction)starttimer:(id)sender {
    countint = 0;
    self.label.text = [NSString stringWithFormat:@"%i",countint];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

- (IBAction)stoptimer:(id)sender {
    [timer invalidate];
}

-(void)updateTimer {
    countint ++;
    self.label.text = [NSString stringWithFormat:@"%i",countint];
}
@end
