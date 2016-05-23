//
//  UIScrollView+SegmentHeader.h
//  SegmentHeaderView
//
//  Created by Vũ Trường Giang on 5/17/16.
//  Copyright © 2016 Vũ Trường Giang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SegmentHeaderView.h"

@interface UIScrollView (SegmentHeader)

/*
 * Store default insets
 */
@property (nonatomic, assign) UIEdgeInsets defaultInset;

/*
 * Segment header view
 */
@property (strong, nonatomic) SegmentHeaderView *segmentHeaderView;


/*
 * if YES, when pull down, segment control will show on header of table
 */
@property (nonatomic, readwrite) BOOL enabledSegment;


/*
 * readonly, check table is showing segment
 */
@property (nonatomic, readonly) BOOL  isShowingSegment;


#pragma mark - Public Method

/*
 * call to update content offset
 */
- (void)scrollViewDidScroll:(UIScrollView*)scrollView;



@end
