#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"ru.yandex.practicum.MovieQuiz";

/// The "YP Background" asset catalog color resource.
static NSString * const ACColorNameYPBackground AC_SWIFT_PRIVATE = @"YP Background";

/// The "YP Black" asset catalog color resource.
static NSString * const ACColorNameYPBlack AC_SWIFT_PRIVATE = @"YP Black";

/// The "YP Gray" asset catalog color resource.
static NSString * const ACColorNameYPGray AC_SWIFT_PRIVATE = @"YP Gray";

/// The "YP Green" asset catalog color resource.
static NSString * const ACColorNameYPGreen AC_SWIFT_PRIVATE = @"YP Green";

/// The "YP Red" asset catalog color resource.
static NSString * const ACColorNameYPRed AC_SWIFT_PRIVATE = @"YP Red";

/// The "YP White" asset catalog color resource.
static NSString * const ACColorNameYPWhite AC_SWIFT_PRIVATE = @"YP White";

/// The "Deadpool" asset catalog image resource.
static NSString * const ACImageNameDeadpool AC_SWIFT_PRIVATE = @"Deadpool";

/// The "Default" asset catalog image resource.
static NSString * const ACImageNameDefault AC_SWIFT_PRIVATE = @"Default";

/// The "Kill Bill" asset catalog image resource.
static NSString * const ACImageNameKillBill AC_SWIFT_PRIVATE = @"Kill Bill";

/// The "LaunchScreen" asset catalog image resource.
static NSString * const ACImageNameLaunchScreen AC_SWIFT_PRIVATE = @"LaunchScreen";

/// The "Old" asset catalog image resource.
static NSString * const ACImageNameOld AC_SWIFT_PRIVATE = @"Old";

/// The "Tesla" asset catalog image resource.
static NSString * const ACImageNameTesla AC_SWIFT_PRIVATE = @"Tesla";

/// The "The Avengers" asset catalog image resource.
static NSString * const ACImageNameTheAvengers AC_SWIFT_PRIVATE = @"The Avengers";

/// The "The Dark Knight" asset catalog image resource.
static NSString * const ACImageNameTheDarkKnight AC_SWIFT_PRIVATE = @"The Dark Knight";

/// The "The Godfather" asset catalog image resource.
static NSString * const ACImageNameTheGodfather AC_SWIFT_PRIVATE = @"The Godfather";

/// The "The Green Knight" asset catalog image resource.
static NSString * const ACImageNameTheGreenKnight AC_SWIFT_PRIVATE = @"The Green Knight";

/// The "The Ice Age Adventures of Buck Wild" asset catalog image resource.
static NSString * const ACImageNameTheIceAgeAdventuresOfBuckWild AC_SWIFT_PRIVATE = @"The Ice Age Adventures of Buck Wild";

/// The "Vivarium" asset catalog image resource.
static NSString * const ACImageNameVivarium AC_SWIFT_PRIVATE = @"Vivarium";

#undef AC_SWIFT_PRIVATE
