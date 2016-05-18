//
//  YZHelpViewController.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZHelpViewController.h"

#import "YZHtml.h"

#import "YZHtmlViewController.h"

#import "YZNavigationController.h"

@interface YZHelpViewController ()

@property (nonatomic, strong) NSMutableArray *htmls;

@end

@implementation YZHelpViewController


- (NSMutableArray *)htmls
{
    if (_htmls == nil) {
        
        _htmls = [NSMutableArray array];
        
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];

        NSData *data = [NSData dataWithContentsOfFile:filePath];

        NSArray *arr =  [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
        for (NSDictionary *dict in arr) {
            
            YZHtml *html = [YZHtml htmlWithDict:dict];
            
            [_htmls addObject:html];
        }
    }
    
    return _htmls;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"帮助";
    
    [self setUpGroup0];
    
}


- (void)setUpGroup0
{
    
    
    YZGroupItem *group = [YZGroupItem groupWithItems:self.htmls];
    
    [self.groups addObject:group];
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    YZGroupItem *group = self.groups[indexPath.section];
    
    // 取出对应模型
    YZHtml *html = group.items[indexPath.row];
    
    YZHtmlViewController *htmlVc = [[YZHtmlViewController alloc] init];
    
    htmlVc.html = html;
    
    YZNavigationController *nav = [[YZNavigationController alloc] initWithRootViewController:htmlVc];
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
    
}



@end