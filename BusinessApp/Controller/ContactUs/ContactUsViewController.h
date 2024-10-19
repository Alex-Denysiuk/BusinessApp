//
//  ContactUsViewController.h
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactUsViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *companyMapView;

- (IBAction)directions:(id)sender;
- (IBAction)callUs:(id)sender;

@end

NS_ASSUME_NONNULL_END
