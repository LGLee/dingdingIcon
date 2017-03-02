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
/** <#weak属性#> */
@property (nonatomic ,weak) UIImageView *imageView2;

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
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    self.imageView2 = imageView2;
    [self.view addSubview:imageView2];
    imageView2.frame = CGRectMake(100, 500, 100, 100);
    imageView2.image = [UIImage triangleImageWithSize:imageView2.frame.size tintColor:[UIColor blueColor]];
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.backgroundColor = [UIColor blueColor];
    [testBtn setTitle:@"测试按钮" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    testBtn.frame = CGRectMake(100, self.view.frame.size.height - 44 -10, self.view.frame.size.width - 200, 44);
    
}

- (void)testBtnClick:(UIButton *)btn{
    btn.selected = !btn.selected;
    // self.imageView2.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:0.3 animations:^{
        self.imageView2.transform = btn.selected?CGAffineTransformMakeRotation(0):CGAffineTransformMakeRotation(M_PI);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
