//
//  ViewController.m
//  ShakeMe
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
    timeint = 10;
    scoreint = 0;
    modeint = 0;
    imageint = 1;
    self.scorelabel.text = [NSString stringWithFormat:@"%i",scoreint];
    self.timelabel.text = [NSString stringWithFormat:@"%i",timeint];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startbutton:(id)sender {
    
    if (timeint == 10){
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updatetime) userInfo:nil repeats:YES];
        self.startbtn.enabled = NO;
        self.startbtn.alpha = 0.5;
        modeint =1;
        
    }
    if (timeint == 0 ){
        timeint = 10;
        scoreint = 0;
    self.scorelabel.text = [NSString stringWithFormat:@"%i",scoreint];
    self.timelabel.text = [NSString stringWithFormat:@"%i",timeint];
[self.startbtn setTitle:@"Start Game" forState:UIControlStateNormal];
    }
    
}

-(void)updatetime {
    
    timeint -=1;
    self.timelabel.text = [NSString stringWithFormat:@"%i",timeint];
    if (timeint == 0){
        [timer invalidate];
        self.startbtn.enabled = YES;
        self.startbtn.alpha = 1.0;
        [self.startbtn setTitle:@"Restart" forState:UIControlStateNormal];
        modeint = 0;
    }
    
}
-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (modeint == 1){
            scoreint ++;
            self.scorelabel.text = [NSString stringWithFormat:@"%i",scoreint];
            imageint +=1;
            if (imageint ==5){
                imageint=1;
            }
            NSString *image = [NSString stringWithFormat:@"Maracas%i.png",imageint];
            self.imageview.image = [UIImage imageNamed:image];
        }
    }
    
    
    
    
    
}
@end
