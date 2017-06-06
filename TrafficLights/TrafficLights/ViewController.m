//
//  ViewController.m
//  TrafficLights
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
    scoreint = 0;
    self.scorelabel.text = [NSString stringWithFormat:@"%i", scoreint];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startstop:(id)sender {
    if (scoreint == 0){
        
        timerint = 3;
        
        self.trafficlight.image = [UIImage imageNamed:@"TrafficLight.png"];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startcounter) userInfo:nil repeats:YES];
        self.startstopbtn.enabled = NO;
        [self.startstopbtn setTitle:@"" forState:UIControlStateNormal];

    }
    else {
        
        [scoretimer invalidate];
        [self.startstopbtn setTitle:@"Restart" forState:UIControlStateNormal];

        
    }
    if (timerint == 0){
        scoreint = 0;
        
    }
}
-(void)startcounter {
    timerint -=1;
    if (timerint ==2){
        self.trafficlight.image = [UIImage imageNamed:@"TrafficLight3.png"];
    }else if (timerint == 1){
        self.trafficlight.image = [UIImage imageNamed:@"TrafficLight2.png"];
    }else if (timerint == 0){
        self.trafficlight.image = [UIImage imageNamed:@"TrafficLight1.png"];
        [timer invalidate];
        
        [self.startstopbtn setTitle:@"Stop" forState:UIControlStateNormal];
        self.startstopbtn.enabled = YES;
        
        scoretimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scorecounter) userInfo:nil repeats:YES];
    }
}
-(void)scorecounter {
    scoreint ++;
    self.scorelabel.text = [NSString stringWithFormat:@"%i",scoreint];
}
@end
