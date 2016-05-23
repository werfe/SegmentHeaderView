//
//  SegmentHeaderView.m
//  SegmentHeaderView
//
//  Created by Vũ Trường Giang on 5/17/16.
//  Copyright © 2016 Vũ Trường Giang. All rights reserved.
//

#import "SegmentHeaderView.h"

@interface SegmentHeaderView ()

@end

@implementation SegmentHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        self.backgroundColor = [UIColor redColor];
        NSArray *itemArray = [NSArray arrayWithObjects: @"One", @"Two", nil];
        _segmentControl = [[UISegmentedControl alloc] initWithItems:itemArray];
        _segmentControl.frame = CGRectMake(35, 200, 250, 30);
        _segmentControl.selectedSegmentIndex = 0;
        [self addSubview:_segmentControl];
        _segmentControl.center = CGPointMake(frame.size.width/2, frame.size.height/2);
        _segmentControl.transform = CGAffineTransformMakeTranslation(0, -80);
    }
    return self;
}
-(void)awakeFromNib{
    
}

-(BOOL)isShow{
    return _isShowSegment;
}
-(void)setIsShowSegment:(BOOL)isShowSegment{
    _isShowSegment = isShowSegment;
    if (isShowSegment) {
        [UIView animateWithDuration:0.29 animations:^{
            _segmentControl.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            
        }];
        
    }else{
        [UIView animateWithDuration:0.29 animations:^{
            _segmentControl.transform = CGAffineTransformMakeTranslation(0, -80);
        } completion:^(BOOL finished) {
            
        }];
    }
}

@end
