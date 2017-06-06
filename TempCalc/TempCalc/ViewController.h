//
//  ViewController.h
//  TempCalc
//
//  Created by Simon Arida on 5/30/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textfield;
@property (strong, nonatomic) IBOutlet UIImageView *tempimage;
@property (strong, nonatomic) IBOutlet UILabel *templabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segcontrol;
@property (strong, nonatomic) IBOutlet UILabel *enterlabel;
- (IBAction)calculate:(id)sender;
- (IBAction)switchconv:(id)sender;


@end

