//
//  ViewController.m
//  SegmentHeaderView
//
//  Created by Vũ Trường Giang on 5/17/16.
//  Copyright © 2016 Vũ Trường Giang. All rights reserved.
//

#import "ViewController.h"
#import "UIScrollView+SegmentHeader.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, assign) NSInteger selectedSegment;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"TableView Header";
    _selectedSegment = 0;
}
-(void)viewDidAppear:(BOOL)animated{
    _tableView.enabledSegment = YES;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView.segmentHeaderView.segmentControl addTarget:self action:@selector(segmentControlDidClicked:) forControlEvents: UIControlEventValueChanged];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (_selectedSegment==0) {
        return 50;
    }else{
        return 5;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 20, 20)];
    
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-YYY hh:mm:ss.SSS"];
    NSString *resultString = [dateFormatter stringFromDate: currentTime];
    if (_selectedSegment==0) {
        label.text = resultString;
    }
    else{
        label.text = [NSString stringWithFormat:@"%d", (int)indexPath.row];
        label.textColor = [UIColor blueColor];
    }
    [label sizeToFit];
    [cell addSubview:label];
    [label setCenter:CGPointMake(label.center.x, cell.contentView.frame.size.height/2)];
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [_tableView scrollViewDidScroll:scrollView];
}


#pragma mark UISegmentControl Method
- (void)segmentControlDidClicked:(UISegmentedControl *)segment
{
    if(segment.selectedSegmentIndex == 0)
    {
        NSLog(@"0");
        _selectedSegment = 0;
        NSIndexSet *sections = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [_tableView numberOfSections])];
        [self.tableView reloadSections:sections withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    else{
        NSLog(@"1");
        _selectedSegment = 1;
        NSIndexSet *sections = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [_tableView numberOfSections])];
        [self.tableView reloadSections:sections withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
@end
