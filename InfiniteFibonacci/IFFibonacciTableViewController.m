//
//  IFFibonacciTableViewController.m
//  InfiniteFibonacci
//
//  Created by Michael Vilabrera on 5/20/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "IFFibonacciTableViewController.h"
#import "IFFiboFinder.h"

@interface IFFibonacciTableViewController ()

//@property (nonatomic) NSMutableArray *scrollHelp;
@property (nonatomic) NSUInteger scrollHelp;

@end

static NSString *CellId = @"CellId";

@implementation IFFibonacciTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollHelp = 24;
//    self.scrollHelp = [NSMutableArray array];
//    [self.scrollHelp addObjectsFromArray:@[@0,@1,@2,@3,@4,@5,@6,@7,@8,@9]];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.scrollHelp;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    
    IFFiboFinder *fiboObj = [[IFFiboFinder alloc] init];
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellId];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%li fibonnaci %llu", (long)indexPath.row, (unsigned long long)[fiboObj findFiboNumber:indexPath.row]];
    
    return cell;
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat actualPosition = scrollView.contentOffset.y;
    CGFloat contentHeight = scrollView.contentSize.height - self.tableView.frame.size.height;
    if (actualPosition >= contentHeight) {
        self.scrollHelp += self.scrollHelp;
//        [self.scrollHelp addObjectsFromArray:self.scrollHelp];
        [self.tableView reloadData];
    }
}

@end
