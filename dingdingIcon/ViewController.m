//
//  ViewController.m
//  dingdingIcon
//
//  Created by lingo on 2017/2/28.
//  Copyright © 2017年 livefor. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LGExtension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:@"darryRing"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image.circleImage];
    
    [self.view addSubview:imageView];
    
    imageView.frame = CGRectMake(100, 100, 100, 100);
    
    
    UIImageView *imageView1 = [[UIImageView alloc] init];
    [self.view addSubview:imageView1];
    imageView1.frame = CGRectMake(100, 300, 100, 100);
    imageView1.image = [UIImage circleImageWithText:@"林果" bgColor:[UIColor blueColor] size:CGSizeMake(imageView1.frame.size.width, imageView1.frame.size.height)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
