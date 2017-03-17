#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WIKFontIcon.h"

@implementation WIKFontIcon

+ (UIFont *)iconFontWithSize:(CGFloat)size
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self registerIconFontWithURL:[[NSBundle bundleForClass:[WIKFontIcon class]]
                                       URLForResource:@"WeatherIcons-Regular" withExtension:@"otf"]];
    });
    
    UIFont *font = [UIFont fontWithName:@"Weather Icons" size:size];
    NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    return font;
}

// Generated Code
+ (instancetype)wiDayCloudyGustsIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf000" size:size]; }
+ (instancetype)wiDayCloudyWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf001" size:size]; }
+ (instancetype)wiDayCloudyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf002" size:size]; }
+ (instancetype)wiDayFogIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf003" size:size]; }
+ (instancetype)wiDayHailIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf004" size:size]; }
+ (instancetype)wiDayLightningIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf005" size:size]; }
+ (instancetype)wiDayRainMixIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf006" size:size]; }
+ (instancetype)wiDayRainWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf007" size:size]; }
+ (instancetype)wiDayRainIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf008" size:size]; }
+ (instancetype)wiDayShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf009" size:size]; }
+ (instancetype)wiDaySnowIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf00a" size:size]; }
+ (instancetype)wiDaySprinkleIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf00b" size:size]; }
+ (instancetype)wiDaySunnyOvercastIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf00c" size:size]; }
+ (instancetype)wiDaySunnyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf00d" size:size]; }
+ (instancetype)wiDayStormShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf00e" size:size]; }
+ (instancetype)wiDayThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf010" size:size]; }
+ (instancetype)wiCloudyGustsIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf011" size:size]; }
+ (instancetype)wiCloudyWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf012" size:size]; }
+ (instancetype)wiCloudyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf013" size:size]; }
+ (instancetype)wiFogIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf014" size:size]; }
+ (instancetype)wiHailIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf015" size:size]; }
+ (instancetype)wiLightningIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf016" size:size]; }
+ (instancetype)wiRainMixIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf017" size:size]; }
+ (instancetype)wiRainWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf018" size:size]; }
+ (instancetype)wiRainIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf019" size:size]; }
+ (instancetype)wiShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf01a" size:size]; }
+ (instancetype)wiSnowIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf01b" size:size]; }
+ (instancetype)wiSprinkleIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf01c" size:size]; }
+ (instancetype)wiStormShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf01d" size:size]; }
+ (instancetype)wiThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf01e" size:size]; }
+ (instancetype)wiWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf021" size:size]; }
+ (instancetype)wiNightAltCloudyGustsIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf022" size:size]; }
+ (instancetype)wiNightAltCloudyWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf023" size:size]; }
+ (instancetype)wiNightAltHailIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf024" size:size]; }
+ (instancetype)wiNightAltLightningIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf025" size:size]; }
+ (instancetype)wiNightAltRainMixIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf026" size:size]; }
+ (instancetype)wiNightAltRainWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf027" size:size]; }
+ (instancetype)wiNightAltRainIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf028" size:size]; }
+ (instancetype)wiNightAltShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf029" size:size]; }
+ (instancetype)wiNightAltSnowIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02a" size:size]; }
+ (instancetype)wiNightAltSprinkleIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02b" size:size]; }
+ (instancetype)wiNightAltStormShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02c" size:size]; }
+ (instancetype)wiNightAltThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02d" size:size]; }
+ (instancetype)wiNightClearIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02e" size:size]; }
+ (instancetype)wiNightCloudyGustsIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf02f" size:size]; }
+ (instancetype)wiNightCloudyWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf030" size:size]; }
+ (instancetype)wiNightCloudyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf031" size:size]; }
+ (instancetype)wiNightHailIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf032" size:size]; }
+ (instancetype)wiNightLightningIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf033" size:size]; }
+ (instancetype)wiNightRainMixIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf034" size:size]; }
+ (instancetype)wiNightRainWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf035" size:size]; }
+ (instancetype)wiNightRainIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf036" size:size]; }
+ (instancetype)wiNightShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf037" size:size]; }
+ (instancetype)wiNightSnowIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf038" size:size]; }
+ (instancetype)wiNightSprinkleIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf039" size:size]; }
+ (instancetype)wiNightStormShowersIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf03a" size:size]; }
+ (instancetype)wiNightThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf03b" size:size]; }
+ (instancetype)wiCelsiusIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf03c" size:size]; }
+ (instancetype)wiCloudDownIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf03d" size:size]; }
+ (instancetype)wiCloudRefreshIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf03e" size:size]; }
+ (instancetype)wiCloudUpIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf040" size:size]; }
+ (instancetype)wiCloudIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf041" size:size]; }
+ (instancetype)wiDegreesIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf042" size:size]; }
+ (instancetype)wiDownLeftIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf043" size:size]; }
+ (instancetype)wiDownIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf044" size:size]; }
+ (instancetype)wiFahrenheitIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf045" size:size]; }
+ (instancetype)wiHorizonAltIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf046" size:size]; }
+ (instancetype)wiHorizonIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf047" size:size]; }
+ (instancetype)wiLeftIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf048" size:size]; }
+ (instancetype)wiNightFogIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf04a" size:size]; }
+ (instancetype)wiRefreshAltIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf04b" size:size]; }
+ (instancetype)wiRefreshIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf04c" size:size]; }
+ (instancetype)wiRightIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf04d" size:size]; }
+ (instancetype)wiSprinklesIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf04e" size:size]; }
+ (instancetype)wiStrongWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf050" size:size]; }
+ (instancetype)wiSunriseIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf051" size:size]; }
+ (instancetype)wiSunsetIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf052" size:size]; }
+ (instancetype)wiThermometerExteriorIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf053" size:size]; }
+ (instancetype)wiThermometerInternalIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf054" size:size]; }
+ (instancetype)wiThermometerIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf055" size:size]; }
+ (instancetype)wiTornadoIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf056" size:size]; }
+ (instancetype)wiUpRightIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf057" size:size]; }
+ (instancetype)wiUpIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf058" size:size]; }
+ (instancetype)wiWindWestIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf059" size:size]; }
+ (instancetype)wiWindSouthWestIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf05a" size:size]; }
+ (instancetype)wiWindSouthEastIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf05b" size:size]; }
+ (instancetype)wiWindSouthIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf05c" size:size]; }
+ (instancetype)wiWindNorthWestIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf05d" size:size]; }
+ (instancetype)wiWindNorthEastIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf05e" size:size]; }
+ (instancetype)wiWindNorthIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf060" size:size]; }
+ (instancetype)wiWindEastIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf061" size:size]; }
+ (instancetype)wiSmokeIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf062" size:size]; }
+ (instancetype)wiDustIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf063" size:size]; }
+ (instancetype)wiSnowWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf064" size:size]; }
+ (instancetype)wiDaySnowWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf065" size:size]; }
+ (instancetype)wiNightSnowWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf066" size:size]; }
+ (instancetype)wiNightAltSnowWindIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf067" size:size]; }
+ (instancetype)wiDaySleetStormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf068" size:size]; }
+ (instancetype)wiNightSleetStormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf069" size:size]; }
+ (instancetype)wiNightAltSleetStormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf06a" size:size]; }
+ (instancetype)wiDaySnowThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf06b" size:size]; }
+ (instancetype)wiNightSnowThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf06c" size:size]; }
+ (instancetype)wiNightAltSnowThunderstormIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf06d" size:size]; }
+ (instancetype)wiSolarEclipseIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf06e" size:size]; }
+ (instancetype)wiLunarEclipseIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf070" size:size]; }
+ (instancetype)wiMeteorIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf071" size:size]; }
+ (instancetype)wiHotIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf072" size:size]; }
+ (instancetype)wiHurricaneIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf073" size:size]; }
+ (instancetype)wiSmogIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf074" size:size]; }
+ (instancetype)wiAlienIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf075" size:size]; }
+ (instancetype)wiSnowflakeColdIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf076" size:size]; }
+ (instancetype)wiStarsIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf077" size:size]; }
+ (instancetype)wiNightPartlyCloudyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf083" size:size]; }
+ (instancetype)wiUmbrellaIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf084" size:size]; }
+ (instancetype)wiDayWindyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf085" size:size]; }
+ (instancetype)wiNightAltCloudyIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf086" size:size]; }
+ (instancetype)wiUpLeftIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf087" size:size]; }
+ (instancetype)wiDownRightIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf088" size:size]; }
+ (instancetype)wiTime12IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf089" size:size]; }
+ (instancetype)wiTime1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08a" size:size]; }
+ (instancetype)wiTime2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08b" size:size]; }
+ (instancetype)wiTime3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08c" size:size]; }
+ (instancetype)wiTime4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08d" size:size]; }
+ (instancetype)wiTime5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08e" size:size]; }
+ (instancetype)wiTime6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf08f" size:size]; }
+ (instancetype)wiTime7IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf090" size:size]; }
+ (instancetype)wiTime8IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf091" size:size]; }
+ (instancetype)wiTime9IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf092" size:size]; }
+ (instancetype)wiTime10IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf093" size:size]; }
+ (instancetype)wiTime11IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf094" size:size]; }
+ (instancetype)wiDaySleetIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b2" size:size]; }
+ (instancetype)wiNightSleetIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b3" size:size]; }
+ (instancetype)wiNightAltSleetIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b4" size:size]; }
+ (instancetype)wiSleetIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b5" size:size]; }
+ (instancetype)wiDayHazeIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b6" size:size]; }
+ (instancetype)wiBeafort0IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b7" size:size]; }
+ (instancetype)wiBeafort1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b8" size:size]; }
+ (instancetype)wiBeafort2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b9" size:size]; }
+ (instancetype)wiBeafort3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0ba" size:size]; }
+ (instancetype)wiBeafort4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0bb" size:size]; }
+ (instancetype)wiBeafort5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0bc" size:size]; }
+ (instancetype)wiBeafort6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0bd" size:size]; }
+ (instancetype)wiBeafort7IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0be" size:size]; }
+ (instancetype)wiBeafort8IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0bf" size:size]; }
+ (instancetype)wiBeafort9IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0c0" size:size]; }
+ (instancetype)wiBeafort10IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0c1" size:size]; }
+ (instancetype)wiBeafort11IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0c2" size:size]; }
+ (instancetype)wiBeafort12IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0c3" size:size]; }
+ (instancetype)wiWindDefaultIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b1" size:size]; }
+ (instancetype)wiMoonNewIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf095" size:size]; }
+ (instancetype)wiMoonWaxingCresent1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf096" size:size]; }
+ (instancetype)wiMoonWaxingCresent2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf097" size:size]; }
+ (instancetype)wiMoonWaxingCresent3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf098" size:size]; }
+ (instancetype)wiMoonWaxingCresent4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf099" size:size]; }
+ (instancetype)wiMoonWaxingCresent5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09a" size:size]; }
+ (instancetype)wiMoonWaxingCresent6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09b" size:size]; }
+ (instancetype)wiMoonFirstQuarterIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09c" size:size]; }
+ (instancetype)wiMoonWaxingGibbous1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09d" size:size]; }
+ (instancetype)wiMoonWaxingGibbous2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09e" size:size]; }
+ (instancetype)wiMoonWaxingGibbous3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf09f" size:size]; }
+ (instancetype)wiMoonWaxingGibbous4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a0" size:size]; }
+ (instancetype)wiMoonWaxingGibbous5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a1" size:size]; }
+ (instancetype)wiMoonWaxingGibbous6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a2" size:size]; }
+ (instancetype)wiMoonFullIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a3" size:size]; }
+ (instancetype)wiMoonWaningGibbous1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a4" size:size]; }
+ (instancetype)wiMoonWaningGibbous2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a5" size:size]; }
+ (instancetype)wiMoonWaningGibbous3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a6" size:size]; }
+ (instancetype)wiMoonWaningGibbous4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a7" size:size]; }
+ (instancetype)wiMoonWaningGibbous5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a8" size:size]; }
+ (instancetype)wiMoonWaningGibbous6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0a9" size:size]; }
+ (instancetype)wiMoon3rdQuarterIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0aa" size:size]; }
+ (instancetype)wiMoonWaningCrescent1IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0ab" size:size]; }
+ (instancetype)wiMoonWaningCrescent2IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0ac" size:size]; }
+ (instancetype)wiMoonWaningCrescent3IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0ad" size:size]; }
+ (instancetype)wiMoonWaningCrescent4IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0ae" size:size]; }
+ (instancetype)wiMoonWaningCrescent5IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0af" size:size]; }
+ (instancetype)wiMoonWaningCrescent6IconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf0b0" size:size]; }

+ (NSDictionary *)allIcons {
    return @{
             @"\uf000" : @"wiDayCloudyGusts",
             @"\uf001" : @"wiDayCloudyWindy",
             @"\uf002" : @"wiDayCloudy",
             @"\uf003" : @"wiDayFog",
             @"\uf004" : @"wiDayHail",
             @"\uf005" : @"wiDayLightning",
             @"\uf006" : @"wiDayRainMix",
             @"\uf007" : @"wiDayRainWind",
             @"\uf008" : @"wiDayRain",
             @"\uf009" : @"wiDayShowers",
             @"\uf00a" : @"wiDaySnow",
             @"\uf00b" : @"wiDaySprinkle",
             @"\uf00c" : @"wiDaySunnyOvercast",
             @"\uf00d" : @"wiDaySunny",
             @"\uf00e" : @"wiDayStormShowers",
             @"\uf010" : @"wiDayThunderstorm",
             @"\uf011" : @"wiCloudyGusts",
             @"\uf012" : @"wiCloudyWindy",
             @"\uf013" : @"wiCloudy",
             @"\uf014" : @"wiFog",
             @"\uf015" : @"wiHail",
             @"\uf016" : @"wiLightning",
             @"\uf017" : @"wiRainMix",
             @"\uf018" : @"wiRainWind",
             @"\uf019" : @"wiRain",
             @"\uf01a" : @"wiShowers",
             @"\uf01b" : @"wiSnow",
             @"\uf01c" : @"wiSprinkle",
             @"\uf01d" : @"wiStormShowers",
             @"\uf01e" : @"wiThunderstorm",
             @"\uf021" : @"wiWindy",
             @"\uf022" : @"wiNightAltCloudyGusts",
             @"\uf023" : @"wiNightAltCloudyWindy",
             @"\uf024" : @"wiNightAltHail",
             @"\uf025" : @"wiNightAltLightning",
             @"\uf026" : @"wiNightAltRainMix",
             @"\uf027" : @"wiNightAltRainWind",
             @"\uf028" : @"wiNightAltRain",
             @"\uf029" : @"wiNightAltShowers",
             @"\uf02a" : @"wiNightAltSnow",
             @"\uf02b" : @"wiNightAltSprinkle",
             @"\uf02c" : @"wiNightAltStormShowers",
             @"\uf02d" : @"wiNightAltThunderstorm",
             @"\uf02e" : @"wiNightClear",
             @"\uf02f" : @"wiNightCloudyGusts",
             @"\uf030" : @"wiNightCloudyWindy",
             @"\uf031" : @"wiNightCloudy",
             @"\uf032" : @"wiNightHail",
             @"\uf033" : @"wiNightLightning",
             @"\uf034" : @"wiNightRainMix",
             @"\uf035" : @"wiNightRainWind",
             @"\uf036" : @"wiNightRain",
             @"\uf037" : @"wiNightShowers",
             @"\uf038" : @"wiNightSnow",
             @"\uf039" : @"wiNightSprinkle",
             @"\uf03a" : @"wiNightStormShowers",
             @"\uf03b" : @"wiNightThunderstorm",
             @"\uf03c" : @"wiCelsius",
             @"\uf03d" : @"wiCloudDown",
             @"\uf03e" : @"wiCloudRefresh",
             @"\uf040" : @"wiCloudUp",
             @"\uf041" : @"wiCloud",
             @"\uf042" : @"wiDegrees",
             @"\uf043" : @"wiDownLeft",
             @"\uf044" : @"wiDown",
             @"\uf045" : @"wiFahrenheit",
             @"\uf046" : @"wiHorizonAlt",
             @"\uf047" : @"wiHorizon",
             @"\uf048" : @"wiLeft",
             @"\uf04a" : @"wiNightFog",
             @"\uf04b" : @"wiRefreshAlt",
             @"\uf04c" : @"wiRefresh",
             @"\uf04d" : @"wiRight",
             @"\uf04e" : @"wiSprinkles",
             @"\uf050" : @"wiStrongWind",
             @"\uf051" : @"wiSunrise",
             @"\uf052" : @"wiSunset",
             @"\uf053" : @"wiThermometerExterior",
             @"\uf054" : @"wiThermometerInternal",
             @"\uf055" : @"wiThermometer",
             @"\uf056" : @"wiTornado",
             @"\uf057" : @"wiUpRight",
             @"\uf058" : @"wiUp",
             @"\uf059" : @"wiWindWest",
             @"\uf05a" : @"wiWindSouthWest",
             @"\uf05b" : @"wiWindSouthEast",
             @"\uf05c" : @"wiWindSouth",
             @"\uf05d" : @"wiWindNorthWest",
             @"\uf05e" : @"wiWindNorthEast",
             @"\uf060" : @"wiWindNorth",
             @"\uf061" : @"wiWindEast",
             @"\uf062" : @"wiSmoke",
             @"\uf063" : @"wiDust",
             @"\uf064" : @"wiSnowWind",
             @"\uf065" : @"wiDaySnowWind",
             @"\uf066" : @"wiNightSnowWind",
             @"\uf067" : @"wiNightAltSnowWind",
             @"\uf068" : @"wiDaySleetStorm",
             @"\uf069" : @"wiNightSleetStorm",
             @"\uf06a" : @"wiNightAltSleetStorm",
             @"\uf06b" : @"wiDaySnowThunderstorm",
             @"\uf06c" : @"wiNightSnowThunderstorm",
             @"\uf06d" : @"wiNightAltSnowThunderstorm",
             @"\uf06e" : @"wiSolarEclipse",
             @"\uf070" : @"wiLunarEclipse",
             @"\uf071" : @"wiMeteor",
             @"\uf072" : @"wiHot",
             @"\uf073" : @"wiHurricane",
             @"\uf074" : @"wiSmog",
             @"\uf075" : @"wiAlien",
             @"\uf076" : @"wiSnowflakeCold",
             @"\uf077" : @"wiStars",
             @"\uf083" : @"wiNightPartlyCloudy",
             @"\uf084" : @"wiUmbrella",
             @"\uf085" : @"wiDayWindy",
             @"\uf086" : @"wiNightAltCloudy",
             @"\uf087" : @"wiUpLeft",
             @"\uf088" : @"wiDownRight",
             @"\uf089" : @"wiTime12",
             @"\uf08a" : @"wiTime1",
             @"\uf08b" : @"wiTime2",
             @"\uf08c" : @"wiTime3",
             @"\uf08d" : @"wiTime4",
             @"\uf08e" : @"wiTime5",
             @"\uf08f" : @"wiTime6",
             @"\uf090" : @"wiTime7",
             @"\uf091" : @"wiTime8",
             @"\uf092" : @"wiTime9",
             @"\uf093" : @"wiTime10",
             @"\uf094" : @"wiTime11",
             @"\uf0b2" : @"wiDaySleet",
             @"\uf0b3" : @"wiNightSleet",
             @"\uf0b4" : @"wiNightAltSleet",
             @"\uf0b5" : @"wiSleet",
             @"\uf0b6" : @"wiDayHaze",
             @"\uf0b7" : @"wiBeafort0",
             @"\uf0b8" : @"wiBeafort1",
             @"\uf0b9" : @"wiBeafort2",
             @"\uf0ba" : @"wiBeafort3",
             @"\uf0bb" : @"wiBeafort4",
             @"\uf0bc" : @"wiBeafort5",
             @"\uf0bd" : @"wiBeafort6",
             @"\uf0be" : @"wiBeafort7",
             @"\uf0bf" : @"wiBeafort8",
             @"\uf0c0" : @"wiBeafort9",
             @"\uf0c1" : @"wiBeafort10",
             @"\uf0c2" : @"wiBeafort11",
             @"\uf0c3" : @"wiBeafort12",
             @"\uf0b1" : @"wiWindDefault",
             @"\uf095" : @"wiMoonNew",
             @"\uf096" : @"wiMoonWaxingCresent1",
             @"\uf097" : @"wiMoonWaxingCresent2",
             @"\uf098" : @"wiMoonWaxingCresent3",
             @"\uf099" : @"wiMoonWaxingCresent4",
             @"\uf09a" : @"wiMoonWaxingCresent5",
             @"\uf09b" : @"wiMoonWaxingCresent6",
             @"\uf09c" : @"wiMoonFirstQuarter",
             @"\uf09d" : @"wiMoonWaxingGibbous1",
             @"\uf09e" : @"wiMoonWaxingGibbous2",
             @"\uf09f" : @"wiMoonWaxingGibbous3",
             @"\uf0a0" : @"wiMoonWaxingGibbous4",
             @"\uf0a1" : @"wiMoonWaxingGibbous5",
             @"\uf0a2" : @"wiMoonWaxingGibbous6",
             @"\uf0a3" : @"wiMoonFull",
             @"\uf0a4" : @"wiMoonWaningGibbous1",
             @"\uf0a5" : @"wiMoonWaningGibbous2",
             @"\uf0a6" : @"wiMoonWaningGibbous3",
             @"\uf0a7" : @"wiMoonWaningGibbous4",
             @"\uf0a8" : @"wiMoonWaningGibbous5",
             @"\uf0a9" : @"wiMoonWaningGibbous6",
             @"\uf0aa" : @"wiMoon3rdQuarter",
             @"\uf0ab" : @"wiMoonWaningCrescent1",
             @"\uf0ac" : @"wiMoonWaningCrescent2",
             @"\uf0ad" : @"wiMoonWaningCrescent3",
             @"\uf0ae" : @"wiMoonWaningCrescent4",
             @"\uf0af" : @"wiMoonWaningCrescent5",
             @"\uf0b0" : @"wiMoonWaningCrescent6",
             
             };
}
@end
