#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNToast, NSObject)

RCT_EXTERN_METHOD(show:(NSDictionary *)options)

+ (BOOL) requiresMainQueueSetup {
  return NO;
}

@end
