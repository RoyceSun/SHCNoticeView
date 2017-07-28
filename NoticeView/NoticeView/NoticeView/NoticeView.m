//
//  AppDelegate.m
//  NoticeView
//
//  Created by gcct on 2017/6/27.
//  Copyright © 2017年 sunhaichen. All rights reserved.
//

#import "NoticeView.h"

@implementation NoticeView

- (NSMutableArray *)data
{
    if (!_data) {
        _data = [NSMutableArray array];
    }
    return _data;
}
- (void)drawRect:(CGRect)rect
{
    [self setUI];
}

- (void)setUI
{
    _index = 0 ;

    self.imgV = [[UIImageView alloc] initWithFrame:CGRectMake(17, self.frame.size.height/2-17/2, 17, 17)];
    self.imgV.image = [UIImage imageNamed:@"img_cz_gonggao"];
    [self addSubview:self.imgV];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(self.imgV.frame.origin.x+self.imgV.frame.size.width+5, 0, self.frame.size.width, self.frame.size.height)];
    self.label.textAlignment = NSTextAlignmentLeft;
    [self addSubview:self.label];
    self.label.text = self.data[0];
    self.label.textColor = [UIColor blueColor];
    self.label.font = [UIFont systemFontOfSize:11];
    
    self.scrButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.scrButton.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.scrButton.backgroundColor = [UIColor clearColor];
    [self.scrButton addTarget:self action:@selector(butAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.scrButton];
    
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scroll) userInfo:nil repeats:YES];
}
-(void)scroll{
    
    _index += 1;
    if (_index == self.data.count) {
        _index = 0;
    }
    CATransition * transition =[CATransition animation];
    [transition setDuration:0.3f];
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = @"cube";
    transition.subtype =kCATransitionFromTop ;
    [self.label.layer addAnimation:transition forKey:nil];
    
    
    NSInteger idx = _index;
    self.label.text =self.data[idx];
//    [self.scrButton setTitle:self.data[idx] forState:UIControlStateNormal];
    
}
- (void)butAction:(UIButton *)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(lableIndexs:)]) {
        [self.delegate lableIndexs:_index];
    }
}
@end
