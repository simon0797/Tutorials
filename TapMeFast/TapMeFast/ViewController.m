//
//  ViewController.m
//  TapMeFast
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
    timeint = 10 ;
    tapmeint = 0;
    self.timelabel.text = [NSString stringWithFormat:@"%i", timeint];
    self.scorelabel.text = [NSString stringWithFormat:@"%i",tapmeint];
    self.tapmebtn.enabled = NO;
    self.tapmebtn.alpha = 0.5;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapButton:(id)sender {
    
    
    
    tapmeint +=1;
    
    self.scorelabel.text = [NSString stringWithFormat:@"%i",tapmeint];
    
}

- (IBAction)startButton:(id)sender {
    
    
    
    if (timeint == 10) {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startcounter) userInfo:nil repeats:YES];
        self.tapmebtn.enabled = YES;
        self.tapmebtn.alpha = 1.0;
        
        self.startbtn.enabled =NO;
        self.startbtn.alpha = 0.5;
        
        
    }
    
    
    if (timeint == 0) {
        timeint = 10;
        tapmeint = 0;
        _scorelabel.text = [NSString stringWithFormat:@"%i", tapmeint];
        self.timelabel.text = [NSString stringWithFormat:@"%i", timeint];
        [self.startbtn setTitle:@"Start" forState:UIControlStateNormal];

    }
    
    
}
-(void)startcounter {
    timeint -=1;
    self.timelabel.text = [NSString stringWithFormat:@"%i", timeint];
    if (timeint ==0){
        [timer invalidate];
        
        self.tapmebtn.enabled = NO;
        self.tapmebtn.alpha = 0.5;
        
        self.startbtn.enabled = YES;
        self.startbtn.alpha = 1;
        
        [self.startbtn setTitle:@"Restart" forState:UIControlStateNormal];
        
    }
}
@end
