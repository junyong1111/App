//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<camera_with_rtmp/RtmppublisherPlugin.h>)
#import <camera_with_rtmp/RtmppublisherPlugin.h>
#else
@import camera_with_rtmp;
#endif

#if __has_include(<fijkplayer/FijkPlugin.h>)
#import <fijkplayer/FijkPlugin.h>
#else
@import fijkplayer;
#endif

#if __has_include(<flutter_live/FlutterLivePlugin.h>)
#import <flutter_live/FlutterLivePlugin.h>
#else
@import flutter_live;
#endif

#if __has_include(<flutter_webrtc/FlutterWebRTCPlugin.h>)
#import <flutter_webrtc/FlutterWebRTCPlugin.h>
#else
@import flutter_webrtc;
#endif

#if __has_include(<path_provider_ios/FLTPathProviderPlugin.h>)
#import <path_provider_ios/FLTPathProviderPlugin.h>
#else
@import path_provider_ios;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [RtmppublisherPlugin registerWithRegistrar:[registry registrarForPlugin:@"RtmppublisherPlugin"]];
  [FijkPlugin registerWithRegistrar:[registry registrarForPlugin:@"FijkPlugin"]];
  [FlutterLivePlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterLivePlugin"]];
  [FlutterWebRTCPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterWebRTCPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
}

@end
