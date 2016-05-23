//
//  SegmentHeaderView.h
//  SegmentHeaderView
//
//  Created by Vũ Trường Giang on 5/17/16.
//  Copyright © 2016 Vũ Trường Giang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentHeaderView : UIView

@property (strong, nonatomic) UISegmentedControl *segmentControl;
@property (nonatomic, assign) BOOL isShowSegment;

@end
