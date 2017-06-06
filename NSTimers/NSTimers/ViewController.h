//
//  ViewController.h
//  NSTimers
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int countint;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)starttimer:(id)sender;
- (IBAction)stoptimer:(id)sender;


@end

