#import "REAppDelegate.h"

// Pods
#import "GoogleMaps.h"
#import "GAI.h"

@implementation REAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self _setUpGoogleMaps];
    [self _setUpGoogleAnalytics];

    return YES;
}

#pragma mark -
#pragma mark private methods

- (void)_setUpGoogleMaps {
    [GMSServices provideAPIKey:kGoogleMapsAPIKey];
}

- (void)_setUpGoogleAnalytics {
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    [GAI sharedInstance].dispatchInterval = 20;
    [GAI sharedInstance].debug = YES;
    id<GAITracker> tracker = [[GAI sharedInstance] trackerWithTrackingId:kGoogleAnalyticsTrackingID];
}

@end
