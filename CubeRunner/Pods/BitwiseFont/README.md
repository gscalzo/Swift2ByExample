# BitwiseFont

[![Twitter](https://img.shields.io/badge/contact-@GiordanoScalzo-blue.svg?style=flat)](http://twitter.com/giordanoscalzo)
[![Version](https://img.shields.io/cocoapods/v/BitwiseFont.svg?style=flat)](http://cocoadocs.org/docsets/BitwiseFont)
[![License](https://img.shields.io/cocoapods/l/BitwiseFont.svg?style=flat)](http://cocoadocs.org/docsets/BitwiseFont)
[![CocoaPods](https://img.shields.io/cocoapods/v/LatoFont.svg?style=flat)](https://github.com/giordanoscalzo/BitwiseFont)

Brings [Bitwise][Bitwise] font to iOS.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![screenshot](https://github.com/gscalzo/BitwiseFont/blob/master/vertical_screenshot.png)

```objc
#import "UIFont+Bitwise.h"

@implementation ExampleVC

- (void)viewDidLoad {
   [super viewDidLoad];

   CGFloat size = 17.0;

   self.bitwiseLabel.font = [UIFont bitwiseFontOfSize:size];
}

@end
```

## Installation

BitwiseFont is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "BitwiseFont"

## Author

giordano scalzo, giordano.scalzo@gmail.com

## License

BitwiseFont is available under the MIT license. See the LICENSE file for more info.

