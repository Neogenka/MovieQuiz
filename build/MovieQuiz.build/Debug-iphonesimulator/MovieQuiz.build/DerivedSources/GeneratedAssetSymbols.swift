import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
extension ColorResource {

    /// The "YP Background" asset catalog color resource.
    static let ypBackground = ColorResource(name: "YP Background", bundle: resourceBundle)

    /// The "YP Black" asset catalog color resource.
    static let ypBlack = ColorResource(name: "YP Black", bundle: resourceBundle)

    /// The "YP Gray" asset catalog color resource.
    static let ypGray = ColorResource(name: "YP Gray", bundle: resourceBundle)

    /// The "YP Green" asset catalog color resource.
    static let ypGreen = ColorResource(name: "YP Green", bundle: resourceBundle)

    /// The "YP Red" asset catalog color resource.
    static let ypRed = ColorResource(name: "YP Red", bundle: resourceBundle)

    /// The "YP White" asset catalog color resource.
    static let ypWhite = ColorResource(name: "YP White", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
extension ImageResource {

    /// The "Deadpool" asset catalog image resource.
    static let deadpool = ImageResource(name: "Deadpool", bundle: resourceBundle)

    /// The "Default" asset catalog image resource.
    static let `default` = ImageResource(name: "Default", bundle: resourceBundle)

    /// The "Kill Bill" asset catalog image resource.
    static let killBill = ImageResource(name: "Kill Bill", bundle: resourceBundle)

    /// The "LaunchScreen" asset catalog image resource.
    static let launchScreen = ImageResource(name: "LaunchScreen", bundle: resourceBundle)

    /// The "Old" asset catalog image resource.
    static let old = ImageResource(name: "Old", bundle: resourceBundle)

    /// The "Tesla" asset catalog image resource.
    static let tesla = ImageResource(name: "Tesla", bundle: resourceBundle)

    /// The "The Avengers" asset catalog image resource.
    static let theAvengers = ImageResource(name: "The Avengers", bundle: resourceBundle)

    /// The "The Dark Knight" asset catalog image resource.
    static let theDarkKnight = ImageResource(name: "The Dark Knight", bundle: resourceBundle)

    /// The "The Godfather" asset catalog image resource.
    static let theGodfather = ImageResource(name: "The Godfather", bundle: resourceBundle)

    /// The "The Green Knight" asset catalog image resource.
    static let theGreenKnight = ImageResource(name: "The Green Knight", bundle: resourceBundle)

    /// The "The Ice Age Adventures of Buck Wild" asset catalog image resource.
    static let theIceAgeAdventuresOfBuckWild = ImageResource(name: "The Ice Age Adventures of Buck Wild", bundle: resourceBundle)

    /// The "Vivarium" asset catalog image resource.
    static let vivarium = ImageResource(name: "Vivarium", bundle: resourceBundle)

}

// MARK: - Backwards Deployment Support -

/// A color resource.
struct ColorResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog color resource name.
    fileprivate let name: Swift.String

    /// An asset catalog color resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize a `ColorResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

/// An image resource.
struct ImageResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog image resource name.
    fileprivate let name: Swift.String

    /// An asset catalog image resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize an `ImageResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// Initialize a `NSColor` with a color resource.
    convenience init(resource: ColorResource) {
        self.init(named: NSColor.Name(resource.name), bundle: resource.bundle)!
    }

}

protocol _ACResourceInitProtocol {}
extension AppKit.NSImage: _ACResourceInitProtocol {}

@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension _ACResourceInitProtocol {

    /// Initialize a `NSImage` with an image resource.
    init(resource: ImageResource) {
        self = resource.bundle.image(forResource: NSImage.Name(resource.name))! as! Self
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// Initialize a `UIColor` with a color resource.
    convenience init(resource: ColorResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}

@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// Initialize a `UIImage` with an image resource.
    convenience init(resource: ImageResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// Initialize a `Color` with a color resource.
    init(_ resource: ColorResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image {

    /// Initialize an `Image` with an image resource.
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}
#endif