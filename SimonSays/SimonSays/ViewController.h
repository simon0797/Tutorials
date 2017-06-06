//
//  ViewController.h
//  SimonSays
//
//  Created by Simon Arida on 5/30/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    NSTimer *simontimer;
    
    int timeint;
    int scoreint;
    int modeint;
    
    
    
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *timelabel;
@property (strong, nonatomic) IBOutlet UILabel *scorelabel;
@property (strong, nonatomic) IBOutlet UIButton *startbutton;

- (IBAction)startButton:(id)sender;


@property (nonatomic, strong) UISwipeGestureRecognizer *leftswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *rightswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *upswipe;
@property (nonatomic, strong) UISwipeGestureRecognizer *downswipe;
@end

