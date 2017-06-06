//
//  ViewController.m
//  Playing Video
//
//  Created by Simon Arida on 6/2/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *code = @"<iframe width=\"360\" height=\"315\" src=\"https://www.youtube.com/embed/nfWlot6h_JM\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self webView] loadHTMLString:code baseURL:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)play:(id)sender {
    
    NSURL *videourl = [[NSBundle mainBundle] URLForResource:@"SampleVideo_1280x720_5mb" withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videourl ];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    [player play];[self presentViewController:controller animated:YES completion:nil];
    
    
    
}

- (IBAction)stream:(id)sender {
    
    NSURL *videourl = [NSURL URLWithString:@"http://sample-videos.com/video/mp4/480/big_buck_bunny_480p_5mb.mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videourl];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc] init];
    controller.player = player;
    [player play];
    [self presentViewController:controller animated:YES completion:nil];
    
    
    
}
@end
