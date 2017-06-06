//
//  ViewController.m
//  TimeandDate
//
//  Created by Simon Arida on 5/29/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) updateTimer {
    NSDateFormatter *timerformatter = [[NSDateFormatter alloc]init];
    [timerformatter setDateFormat:@"hh:mm:ss"];
    self.timelabel.text = [timerformatter stringFromDate:[NSDate date]];
    
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"dd-MM-YYYY"];
    self.dateLabel.text = [dateformatter stringFromDate:[NSDate date]];
}

@end
