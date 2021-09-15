#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(GliaWidgetsModule, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(configure:(NSString *) appToken
                  apiToken:(NSString *)apiToken
                  siteId:(NSString *)siteId
                  queueId:(NSString *)queueId)

RCT_EXTERN_METHOD(startChat)

RCT_EXTERN_METHOD(startAudioCall)

RCT_EXTERN_METHOD(startVideoCall)

@end
