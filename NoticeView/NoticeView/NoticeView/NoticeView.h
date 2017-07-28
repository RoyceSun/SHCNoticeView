//
//  AppDelegate.h
//  NoticeView
//
//  Created by gcct on 2017/6/27.
//  Copyright © 2017年 sunhaichen. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NoticeDelegate <NSObject>

- (void)lableIndexs:(NSInteger)index;

@end
@interface NoticeView : UIView
@property (nonatomic,retain) UILabel * label;
@property (nonatomic,retain) NSMutableArray * data;
@property (nonatomic,assign) NSInteger index;
@property (nonatomic,retain) UIButton * scrButton;
@property (nonatomic, strong) UIColor *colors;
@property (nonatomic, strong) UIImageView *imgV;
@property (nonatomic, assign) id<NoticeDelegate>delegate;
@end
