//
//  ViewController.h
//  TapMeFast
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int timeint;
    int tapmeint;
}
@property (strong, nonatomic) IBOutlet UILabel *timelabel;
@property (strong, nonatomic) IBOutlet UILabel *scorelabel;
@property (strong, nonatomic) IBOutlet UIButton *tapmebtn;
@property (strong, nonatomic) IBOutlet UIButton *startbtn;

- (IBAction)tapButton:(id)sender;
- (IBAction)startButton:(id)sender;

@end

