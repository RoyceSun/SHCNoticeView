//
//  ViewController.m
//  NoticeView
//
//  Created by gcct on 2017/6/27.
//  Copyright © 2017年 sunhaichen. All rights reserved.
//

#import "ViewController.h"
#import "NoticeView.h"

@interface ViewController ()<NoticeDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NoticeView *viewN = [[NoticeView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 35)];
    viewN.data = [NSMutableArray arrayWithObjects:@"从前有座山",@"山里有座庙",@"庙里住着一个老和尚和小和尚",@"有一个天老和尚给小和尚讲故事:", nil];
    viewN.delegate = self;
    viewN.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewN];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark -- NoticeDelegate
- (void)lableIndexs:(NSInteger)index
{
    NSLog(@"%ld",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
