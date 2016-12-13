//
//  MySDKView.m
//  MySDK
//
//  Created by Walker on 2016/12/13.
//  Copyright © 2016年 Walker. All rights reserved.
//

#import "MySDKView.h"

@interface MySDKView()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation MySDKView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        NSBundle *bundle = [NSBundle bundleForClass:self.class];
        bundle = [NSBundle bundleWithIdentifier:@"com.touker.MySDK"];
        self.imageView.image = [UIImage imageNamed:@"Image" inBundle:bundle compatibleWithTraitCollection:nil];
        self.imageView.backgroundColor = [UIColor orangeColor];
        [self addSubview:self.imageView];
    }
    return self;
}
@end
