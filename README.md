# SegmentHeaderView (like Skype)
[![Video Demo](https://github.com/werfe/SegmentHeaderView/blob/master/ScreenShot.jpg?raw=true)](https://www.youtube.com/watch?v=0di6ZEsw2TY)
## Installation
* via werfe: github "werfe/SegmentHeaderView"
* or copy SegmentHeaderView folder to your project

## Usage
* **Import UISCrollView+SegmentHeader category to your table/scroll/colleciton view**
```objective-c
#import "UISCrollView+SegmentHeader.h"
```
* **In "viewDidAppear"**
```objective-c
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    _tableView.enabledSegment = YES;
    //Do not forget add target action for Segment
    [_tableView.segmentHeaderView.segmentControl addTarget:self action:@selector(segmentControlDidClicked:) forControlEvents: UIControlEventValueChanged];
}
```
* **Add a method required**
```objective-c
#pragma mark - methods required
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [_tableView scrollViewDidScroll:scrollView];
}
```

* **That's it!**

# Contact

* Skype: live:werfe
* Mail: werfeee@gmail.com

# License

The MIT License (MIT)
