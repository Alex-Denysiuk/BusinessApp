//
//  PortfolioViewController.h
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PortfolioViewController : UICollectionViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (copy, nonatomic) NSArray *imageItemsArray;

@end

NS_ASSUME_NONNULL_END
