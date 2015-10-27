//
//  UIFont+Bitwise.m
//  Pods
//
//  Created by Giordano Scalzo on 20/03/2015.
//
//

#import "UIFont+Bitwise.h"
#import <CoreText/CoreText.h>

#define PODNAME @"BitwiseFont"

// Based on https://github.com/CocoaPods-Fonts/OpenSans/blob/874e65bc21abe54284e195484d2259b2fe858680/UIFont%2BOpenSans.m

@interface ECFontLoader : NSObject

+ (void)loadFontWithName:(NSString *)fontName;

@end

@implementation ECFontLoader

+ (void)loadFontWithName:(NSString *)fontName {
    NSBundle *bundle = [NSBundle bundleForClass:[ECFontLoader class]];
    NSString *bundlePath = [bundle pathForResource:PODNAME ofType:@"bundle"];
    NSBundle *bundleWithFonts = [NSBundle bundleWithPath:bundlePath];
    
    NSURL *fontURL = [bundleWithFonts URLForResource:fontName withExtension:@"ttf"];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];
    
    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);
    
    if (font) {
        CFErrorRef error = NULL;
        if (CTFontManagerRegisterGraphicsFont(font, &error) == NO) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:(__bridge NSString *)errorDescription userInfo:@{ NSUnderlyingErrorKey: (__bridge NSError *)error }];
        }
        
        CFRelease(font);
    }
    
    CFRelease(provider);
}

@end

@implementation UIFont (Bitwise)

+ (instancetype)ec_LoadAndReturnFont:(NSString *)fontName size:(CGFloat)fontSize onceToken:(dispatch_once_t *)onceToken {
    dispatch_once(onceToken, ^{
        [ECFontLoader loadFontWithName:fontName];
    });
    
    return [self fontWithName:fontName size:fontSize];
}

+ (instancetype)bitwiseFontOfSize:(CGFloat)size{
    static dispatch_once_t onceToken;
    return [self ec_LoadAndReturnFont:@"Bitwise" size:size onceToken:&onceToken];
}


@end
