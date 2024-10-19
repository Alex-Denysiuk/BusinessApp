//
//  ContactUsViewController.m
//  BusinessApp
//
//  Created by Dev on 17.10.2024.
//

#import "ContactUsViewController.h"
#import "MapPin.h"

@interface ContactUsViewController ()

@end

@implementation ContactUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;

    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    location.latitude = 51.501364;
    location.longitude = -0.1418899999999894;
    
    region.span = span;
    region.center = location;
    
    [self.companyMapView setRegion:region animated:YES];
    
    MapPin *mapPin = [[MapPin alloc] init];
    mapPin.coordinate = location;
    [self.companyMapView addAnnotation:mapPin];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://maps.apple.com/maps?daddr=51.501364,-0.1418899999999894"] options:@{} completionHandler:nil];
}

- (IBAction)callUs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:123456789"] options:@{} completionHandler:nil];
}

@end
