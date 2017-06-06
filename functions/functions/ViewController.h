//
//  ViewController.h
//  functions
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>{
    
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *txtview;
@property (strong, nonatomic) IBOutlet UITextField *txtfeild;
@property (strong, nonatomic) IBOutlet UILabel *label2;

- (IBAction)setText:(id)sender;
- (IBAction)setaColor:(id)sender;
- (IBAction)fontSize:(id)sender;
- (IBAction)shadowColor:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)setShadow:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)center:(id)sender;
- (IBAction)customfont:(id)sender;


@end

