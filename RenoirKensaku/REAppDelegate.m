#import "REAppDelegate.h"
#import "GoogleMaps.h"

@implementation REAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [GMSServices provideAPIKey:kGoogleMapsAPIKey];

    return YES;
}
							
@end
