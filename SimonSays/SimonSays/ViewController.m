//
//  ViewController.m
//  SimonSays
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
    self.leftswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleswipes:)];
    self.rightswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleswipes:)];
    self.upswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleswipes:)];
    self.downswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleswipes:)];

    self.leftswipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightswipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upswipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downswipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftswipe];
    [self.view addGestureRecognizer:self.rightswipe];
    [self.view addGestureRecognizer:self.upswipe];
    [self.view addGestureRecognizer:self.downswipe];
    
    timeint = 20;
    scoreint = 0;
    modeint = 0;
    
    self.timelabel.text = [NSString stringWithFormat:@"Time: %i",timeint];
    self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
    
    self.label.layer.cornerRadius = 20;
    self.label.clipsToBounds = YES;


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startButton:(id)sender {
    
    if (timeint == 20) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updatetimer) userInfo:nil repeats:YES];
        [self simonSays];
        self.startbutton.enabled = NO;
        self.startbutton.alpha = 0.5;
        modeint = 1;
        
    }
    if (timeint == 0) {
        timeint = 20;
        scoreint = 0;
        
        
        self.timelabel.text = [NSString stringWithFormat:@"Time: %i",timeint];
        self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];

        [self.startbutton setTitle:@"Start Game" forState:UIControlStateNormal];
        self.label.text = @"Simon Says";
    }
    
    
}
-(void)updatetimer{
    timeint -=1;
    self.timelabel.text = [NSString stringWithFormat:@"Time: %i",timeint];
    if (timeint == 0 ) {
        [timer invalidate];
        [simontimer invalidate];
        modeint = 0;
        self.label.text = @"Game Over";
        
        self.startbutton.enabled = YES;
        self.startbutton.alpha = 1.0;
        [self.startbutton setTitle:@"Restart" forState:UIControlStateNormal ];
    }
    
    
}



-(void) simonSays{
    NSArray *array = @[@"Simon says swipe Left",
                       @"Simon says swipe Right",
                       @"Simon says swipe Up",
                       @"Simon says swipe Down",
                       @"Swipe Left",
                       @"Swipe Right",
                       @"Swipe Up",
                       @"Swipe Down",];
    int randword = arc4random() % array.count;
    self.label.text = array[randword];
    
    simontimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonSays) userInfo:nil repeats:NO];
    
    
    
    
}
-(void)handleswipes:(UISwipeGestureRecognizer *)sender {
    if (modeint == 1){
        if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
            [simontimer invalidate];
            if ([self.label.text isEqualToString:@"Simon says swipe Left"]) {
                scoreint +=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
            }else {
                
                scoreint -=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
                
                
            }
        }
        if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
            [simontimer invalidate];
            if ([self.label.text isEqualToString:@"Simon says swipe Right"]) {
                scoreint +=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
            }else {
                
                scoreint -=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
                
                
            }
        }
        if (sender.direction == UISwipeGestureRecognizerDirectionUp) {
            [simontimer invalidate];
            if ([self.label.text isEqualToString:@"Simon says swipe Up"]) {
                scoreint +=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
            }else {
                
                scoreint -=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
                
                
            }
        }
        if (sender.direction == UISwipeGestureRecognizerDirectionDown) {
            [simontimer invalidate];
            if ([self.label.text isEqualToString:@"Simon says swipe Down"]) {
                scoreint +=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
            }else {
                
                scoreint -=1;
                self.scorelabel.text = [NSString stringWithFormat:@"Score: %i",scoreint];
                [self simonSays];
                
                
            }
        }

        
        
    }
    
}
@end
