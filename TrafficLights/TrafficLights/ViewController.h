//
//  ViewController.h
//  TrafficLights
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    NSTimer *scoretimer;
    int timerint;
    int scoreint;
    
}
@property (strong, nonatomic) IBOutlet UIImageView *trafficlight;

@property (strong, nonatomic) IBOutlet UILabel *scorelabel;
@property (strong, nonatomic) IBOutlet UIButton *startstopbtn;
- (IBAction)startstop:(id)sender;

@end

