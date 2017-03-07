//
//  BChatOption.m
//  Pods
//
//  Created by Benjamin Smiley-andrews on 17/12/2016.
//
//

#import "BChatOption.h"
#import <ChatSDK/ChatCore.h>
#import <ChatSDK/ChatUI.h>

@implementation BChatOption

-(UIImage *) icon {
    return [UIImage imageNamed:@"Frameworks/ChatSDK.framework/ChatUI.bundle/icn_60_sticker.png"];
}

-(NSString *) title {
    return [NSBundle t:bSticker];
}

-(RXPromise *) execute {
    return [RXPromise resolveWithResult:Nil];
}

@end
