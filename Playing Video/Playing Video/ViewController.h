//
//  ViewController.h
//  Playing Video
//
//  Created by Simon Arida on 6/2/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>


@interface ViewController : UIViewController 
@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)play:(id)sender;
- (IBAction)stream:(id)sender;


@end

