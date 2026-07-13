#import "THPinViewControllerResources.h"

#import "THPinViewController.h"

NSBundle *THPinViewControllerResourcesBundle(void)
{
#if SWIFT_PACKAGE
    NSString *bundleName = @"THPinViewController_THPinViewController";
    NSArray<NSURL *> *candidates = @[
        NSBundle.mainBundle.resourceURL,
        [NSBundle bundleForClass:[THPinViewController class]].resourceURL,
        NSBundle.mainBundle.bundleURL,
    ];

    for (NSURL *candidate in candidates) {
        NSURL *bundleURL = [candidate URLByAppendingPathComponent:[bundleName stringByAppendingPathExtension:@"bundle"]];
        NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
        if (bundle != nil) {
            return bundle;
        }
    }

    return NSBundle.mainBundle;
#else
    NSString *bundlePath = [[NSBundle bundleForClass:[THPinViewController class]] pathForResource:@"THPinViewController"
                                                                                              ofType:@"bundle"];
    return [NSBundle bundleWithPath:bundlePath];
#endif
}
