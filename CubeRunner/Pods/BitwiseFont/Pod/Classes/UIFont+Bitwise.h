//
//  UIFont+Bitwise.h
//  Pods
//
//  Created by Giordano Scalzo on 20/03/2015.
//
//

#import <UIKit/UIKit.h>

/// UIFont extension providing the Bitwise font
@interface UIFont (Bitwise)

/** Returns a font object for the Bitwise font which has the specified size instead.
 @param size The desired size (in points) of the new font object. This value must be greater than 0.0
 @return A font object of the specified size.
 */
+ (instancetype)bitwiseFontOfSize:(CGFloat)size;

@end
