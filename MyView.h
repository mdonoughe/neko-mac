/* MyView */

#import <Cocoa/Cocoa.h>

@interface MyView : NSView
{
	NSImage *image;
}

- (NSImage*)image;
- (void)setImageTo:(NSImage*)theImage;

@end
