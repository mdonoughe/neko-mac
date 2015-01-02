#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(NSRect)frameRect
{
	if ((self = [super initWithFrame:frameRect]) != nil) {
		image = nil;
	}
	return self;
}

- (void)setImageTo:(NSImage*)theImage
{
	if(image == theImage)
		return;
	image = theImage;
	[self setNeedsDisplay:YES];
}

- (NSImage*)image
{
	return image;
}

- (void)drawRect:(NSRect)rect
{
    if(image) {
        [[NSGraphicsContext currentContext] setImageInterpolation:NSImageInterpolationNone];
		[image drawAtPoint:NSMakePoint(0.0f, 0.0f) fromRect:NSZeroRect operation:NSCompositeCopy fraction:1.0f];
    }
	//printf("draw %d\n", image);
}

@end
