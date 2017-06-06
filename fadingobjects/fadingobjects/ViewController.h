//
//  ViewController.h
//  fadingobjects
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segnentcontrol;
@property (strong, nonatomic) IBOutlet UISwitch *switchoutlet;
@property (strong, nonatomic) IBOutlet UILabel *label2;
- (IBAction)Fadein:(id)sender;

- (IBAction)Fadeout:(id)sender;
- (IBAction)whtspMyAlpha:(id)sender;

@end

