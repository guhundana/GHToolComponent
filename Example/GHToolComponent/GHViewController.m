//
//  GHViewController.m
//  GHToolComponent
//
//  Created by danalu on 05/14/2021.
//  Copyright (c) 2021 danalu. All rights reserved.
//

#import "GHViewController.h"
#import "YTDrawView.h"

@interface GHViewController ()

@end

@implementation GHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = CGRectMake(0, 20, self.view.bounds.size.width, 100);
    YTDrawView *textDrawView = [[YTDrawView alloc] initWithFrame:frame];
    textDrawView.backgroundColor = [UIColor whiteColor];
    textDrawView.text = @"手动布局手动计算高度：\n这是一个最好的时代，也是一个最坏的时代；这是明智的时代，这是愚昧的时代；这是信任的纪元，这是怀疑的纪元；这是光明的季节，这是黑暗的季节；这是希望的春日，这是失望的冬日；我们面前应有尽有，我们面前一无所有；我们都将直上天堂，我们都将直下地狱。";
    textDrawView.textColor = [UIColor redColor];
    textDrawView.font = [UIFont systemFontOfSize:16];
    CGSize size = [textDrawView sizeThatFits:CGSizeMake(frame.size.width, MAXFLOAT)];
    textDrawView.frame = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame), size.width, size.height);
    [self.view addSubview:textDrawView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
