//
//  YZNewFeatureViewController.m
//  彩票
//
//  Created by yz on 15/6/28.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZNewFeatureViewController.h"

#define YZGuidePageCount 4

#import "UIView+Frame.h"

#import "YZNewFeatureCell.h"

@interface YZNewFeatureViewController ()

@property (nonatomic, weak) UIImageView *guideView;
@property (nonatomic, weak) UIImageView *smallText;
@property (nonatomic, weak) UIImageView *largeText;

@property (nonatomic, assign) CGFloat offsetX;



@end

@implementation YZNewFeatureViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.itemSize = [UIScreen mainScreen].bounds.size;
    layout.minimumLineSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [self initWithCollectionViewLayout:layout];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.collectionView registerClass:[YZNewFeatureCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    
    // 添加guide
    [self setUpGuide];
    
    // 添加线
    [self setUpGuideLine];
    
    // LargeText
    [self setUpGuideLargeText];
    
    // SmallText
    [self setUpGuideSmallText];
    
    
    
    
    
}

#pragma mark <UICollectionViewDataSource>

// 添加guide
- (void)setUpGuide
{
    
    UIImageView *guideView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    
    guideView.centerX = self.view.centerX;
    _guideView = guideView;
    
    [self.collectionView addSubview:guideView];
}

// GuideLine
- (void)setUpGuideLine
{
    UIImageView *guideLine = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    
    guideLine.x -= self.view.width * 0.47;
    
    [self.collectionView addSubview:guideLine];

}


// LargeText
- (void)setUpGuideLargeText
{
    UIImageView *largeText = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    _largeText = largeText;
    
    largeText.y = self.view.height * 0.7;
    largeText.centerX = self.view.centerX;
    
    [self.collectionView addSubview:largeText];

}


// 添加SmallText
- (void)setUpGuideSmallText
{
    UIImageView *smallText = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    
    _smallText = smallText;
    
    smallText.y = self.view.height * 0.8;
    smallText.centerX = self.view.centerX;
    
    [self.collectionView addSubview:smallText];

}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    // 获取当前偏移量
    CGFloat offsetX = scrollView.contentOffset.x;
    
    
    // 获取偏移量差
    CGFloat offsetGap = offsetX - _offsetX;
    

    // guideView
    _guideView.x += 2 * offsetGap;
    
    // largeText
    _largeText.x += 2 * offsetGap;
    
    // smallText
    _smallText.x += 2 * offsetGap;
    
    
    [UIView animateWithDuration:0.25 animations:^{
        
        _guideView.x -= offsetGap;
        
        _largeText.x -= offsetGap;
        
        _smallText.x -= offsetGap;
        
    }];
    
    // 切换图片
    int page = offsetX / self.view.width + 1;
    
    _guideView.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%d",page]];
    
    _largeText.image = [UIImage imageNamed:[NSString stringWithFormat:@"guideLargeText%d",page]];
    
    _smallText.image = [UIImage imageNamed:[NSString stringWithFormat:@"guideSmallText%d",page]];
    
    _offsetX = offsetX;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return YZGuidePageCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    YZNewFeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%ldBackground568h",indexPath.row + 1]];
    
    [cell setIndexPath:indexPath count:YZGuidePageCount];
    
    return cell;
}



@end
