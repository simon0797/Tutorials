//
//  ViewController.m
//  objarrays
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
    
    
    NSArray *array = @[@"Apple",@"Hello",@"Bye"];
    self.label.text = array[0];
    
    NSMutableArray *array2 = [[NSMutableArray alloc]initWithObjects:@"Apple",@"Hello",@"Bye", nil];
    
    [array2 addObject:@"mmm"];
      self.label2.text = array2[3];
    [array2 insertObject:@"ok" atIndex:0];
    NSLog(@"%@",array2);
    NSLog(@"%lu",array2.count);
    [array2 removeObjectAtIndex:1];
    NSLog(@"%@",array2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
