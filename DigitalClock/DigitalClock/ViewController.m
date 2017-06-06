//
//  ViewController.m
//  DigitalClock
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
    
    self.label.text =@"";
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
    
    self.settingsview.hidden = YES;
    self.settingsbtn.alpha = 0.25;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) updateClock {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
    
}

- (IBAction)segmentcolorchanged:(id)sender {
    if (self.segmentClock.selectedSegmentIndex == 0) {
        
        self.label.textColor = [UIColor whiteColor];
        
    }
    if (self.segmentClock.selectedSegmentIndex == 1) {
        
        self.label.textColor = [UIColor blackColor];
        
    }
    if (self.segmentClock.selectedSegmentIndex == 2) {
        
        self.label.textColor = [UIColor greenColor];
        
    }
    if (self.segmentClock.selectedSegmentIndex == 3) {
        
        self.label.textColor = [UIColor redColor];
        
    }
}

- (IBAction)segmentbackgroundchanged:(id)sender {
    
    if (self.segmentBackground.selectedSegmentIndex == 0) {
        
        self.view.backgroundColor = [UIColor blackColor];
        
    }
    if (self.segmentBackground.selectedSegmentIndex == 1) {
        
        self.view.backgroundColor = [UIColor whiteColor];
        
    }

    if (self.segmentBackground.selectedSegmentIndex == 2) {
        
        self.view.backgroundColor = [UIColor blueColor];
        
    }

    if (self.segmentBackground.selectedSegmentIndex == 3) {
        
        self.view.backgroundColor = [UIColor yellowColor];
        
    }

    
}

- (IBAction)settingsbutton:(id)sender {
    
    if (self.settingsview.hidden == NO){
        self.settingsview.hidden = YES;
        self.settingsbtn.alpha = 0.25;
        [self.settingsbtn setTitle:@"Show Settings" forState:UIControlStateNormal];
    }else {
        
    self.settingsview.hidden = NO;
        self.settingsbtn.alpha = 1.0;
        [self.settingsbtn setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
}
@end
