//
//  ViewController.h
//  DigitalClock
//
//  Created by Simon Arida on 5/30/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *settingsview;
@property (strong, nonatomic) IBOutlet UIButton *settingsbtn;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentClock;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentBackground;

- (IBAction)segmentcolorchanged:(id)sender;
- (IBAction)segmentbackgroundchanged:(id)sender;
- (IBAction)settingsbutton:(id)sender;

@end

