//
//  PortfolioCollectionViewCell.m
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import "PortfolioCollectionViewCell.h"

@implementation PortfolioCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _imageView.contentMode = UIViewContentModeScaleToFill;
        
        [self.contentView addSubview:_imageView];
    }
    return self;
}

@end
