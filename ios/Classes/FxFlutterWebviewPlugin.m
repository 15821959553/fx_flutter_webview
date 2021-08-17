#import "FxFlutterWebviewPlugin.h"
#if __has_include(<fx_flutter_webview/fx_flutter_webview-Swift.h>)
#import <fx_flutter_webview/fx_flutter_webview-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fx_flutter_webview-Swift.h"
#endif

@implementation FxFlutterWebviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFxFlutterWebviewPlugin registerWithRegistrar:registrar];
}
@end
