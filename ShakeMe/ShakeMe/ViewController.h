//
//  ViewController.h
//  ShakeMe
//
//  Created by Simon Arida on 5/30/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    int timeint;
    int scoreint;
    
    int modeint;
    int imageint;
    
    
    
}
@property (strong, nonatomic) IBOutlet UILabel *timelabel;
@property (strong, nonatomic) IBOutlet UILabel *scorelabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageview;
@property (strong, nonatomic) IBOutlet UIButton *startbtn;

- (IBAction)startbutton:(id)sender;


@end

