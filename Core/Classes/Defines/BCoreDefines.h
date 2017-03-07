//
//  BCoreDefines.h
//  Pods
//
//  Created by Benjamin Smiley-andrews on 25/11/2015.
//
//

#ifndef BCoreDefines_h
#define BCoreDefines_h

#define bProfilePictureSize CGSizeMake(300, 300)
#define bProfilePictureThumbnailSize CGSizeMake(100, 100)

// How longer after the user stops typing until the recipient
// stops seeing the "typing" indicator
#define bTypingTimeout 5.0
#define bLocationDefaultArea 1000

#define bDefaultMessageColorMe @"abcff4"
#define bDefaultMessageColorReply @"d7d4d3"

//#define bBundleName @"Frameworks/ChatSDK.framework/ChatUI"

#define bDefaultProfileImage @"Frameworks/ChatSDK.framework/ChatUI.bundle/icn_100_anonymous.png"
#define bDefaultPublicGroupImage @"Frameworks/ChatSDK.framework/ChatUI.bundle/icn_100_anonymousGroup.png"
#define bDefaultPlaceholderImage @"Frameworks/ChatSDK.framework/ChatUI.bundle/icn_300_placeholder.png"

#define bDefaultFontSize 17
#define bDefaultUserNameLabelSize 14
#define bDefaultTextColor @"000000"

#define bThreadDateFormat @"HH:mm dd/MM/YY"

#endif /* BCoreDefines_h */
