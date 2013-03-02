#import "REViewController.h"

@interface REViewController ()
@end

@implementation REViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.8683
                                                            longitude:151.2086
                                                                 zoom:6];
    _mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    _mapView.myLocationEnabled = YES;
    self.view = _mapView;

    GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
    options.position = CLLocationCoordinate2DMake(-33.8683, 151.2086);
    options.title = @"Sydney";
    options.snippet = @"Australia";
    [_mapView addMarkerWithOptions:options];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
