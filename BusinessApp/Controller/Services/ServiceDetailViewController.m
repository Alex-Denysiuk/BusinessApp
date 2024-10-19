//
//  ServiceDetailViewController.m
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import "ServiceDetailViewController.h"

@interface ServiceDetailViewController ()

@end

@implementation ServiceDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.detailModal[0];
    
    self.detailTitle.text = self.detailModal[0];
    self.detailDescription.text = self.detailModal[2];

    self.detailImage.image = [UIImage imageNamed:self.detailModal[1]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
