//
//  PortfolioViewController.m
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import "PortfolioViewController.h"
#import "PortfolioCollectionViewCell.h"

@interface PortfolioViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation PortfolioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
               
    _imageItemsArray = @[@"Image1",
              @"Image2",
              @"Image3",
              @"Image4",
              @"Image5",
              @"Image1",
              @"Image2",
              @"Image3",
              @"Image4",
              @"Image5",
              @"Image1",
              @"Image2",
              @"Image3",
              @"Image4",
              @"Image5"];
    
    [self.collectionView registerClass:[PortfolioCollectionViewCell class] forCellWithReuseIdentifier:@"CellIdentifier"];

    self.collectionView.delegate = self;
    self.collectionView.delegate = self;
    
    NSCollectionLayoutSize *itemSize = [NSCollectionLayoutSize
                                        sizeWithWidthDimension: [NSCollectionLayoutDimension fractionalHeightDimension:1.0]
                                        heightDimension: [NSCollectionLayoutDimension absoluteDimension:175]];
    NSCollectionLayoutItem *item = [NSCollectionLayoutItem itemWithLayoutSize:itemSize];

    NSCollectionLayoutSize *groupSize = [NSCollectionLayoutSize
                                         sizeWithWidthDimension: [NSCollectionLayoutDimension fractionalWidthDimension:1.0]
                                         heightDimension:[NSCollectionLayoutDimension absoluteDimension:175]];
    
    NSCollectionLayoutGroup *group = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize: groupSize repeatingSubitem: item count: 2];
    
    group.interItemSpacing = [NSCollectionLayoutSpacing fixedSpacing:10];

    NSCollectionLayoutSection *section = [NSCollectionLayoutSection sectionWithGroup:group];
    section.interGroupSpacing = 10;
    section.contentInsets = NSDirectionalEdgeInsetsMake(20, 20, 0, 20);

    UICollectionViewCompositionalLayout *layout = [[UICollectionViewCompositionalLayout alloc] initWithSection:section];

    self.collectionView.collectionViewLayout = layout;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView 
     numberOfItemsInSection:(NSInteger)section {
    return _imageItemsArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PortfolioCollectionViewCell *cell= [collectionView dequeueReusableCellWithReuseIdentifier:@"CellIdentifier" forIndexPath:indexPath];

    cell.imageView.image = [UIImage imageNamed: _imageItemsArray[indexPath.row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
