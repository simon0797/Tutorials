//
//  ViewController.m
//  PlayingSound
//
//  Created by Simon Arida on 6/2/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *soundurl = [ NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"WhatsApp Audio 2017-05-30 at 9.59.43 AM" ofType:@"mp4"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundurl , &soundID );
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playWli:(id)sender {
    
    
    
    AudioServicesPlaySystemSound(soundID);
    
    
}
@end
