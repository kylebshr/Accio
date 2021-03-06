//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try font.validate()
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 4 files.
  struct file {
    /// Resource file `Rubik-Bold.ttf`.
    static let rubikBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Rubik-Bold", pathExtension: "ttf")
    /// Resource file `Rubik-Light.ttf`.
    static let rubikLightTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Rubik-Light", pathExtension: "ttf")
    /// Resource file `Rubik-Medium.ttf`.
    static let rubikMediumTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Rubik-Medium", pathExtension: "ttf")
    /// Resource file `Rubik-Regular.ttf`.
    static let rubikRegularTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "Rubik-Regular", pathExtension: "ttf")
    
    /// `bundle.url(forResource: "Rubik-Bold", withExtension: "ttf")`
    static func rubikBoldTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.rubikBoldTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Rubik-Light", withExtension: "ttf")`
    static func rubikLightTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.rubikLightTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Rubik-Medium", withExtension: "ttf")`
    static func rubikMediumTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.rubikMediumTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "Rubik-Regular", withExtension: "ttf")`
    static func rubikRegularTtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.rubikRegularTtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 4 fonts.
  struct font: Rswift.Validatable {
    /// Font `Rubik-Bold`.
    static let rubikBold = Rswift.FontResource(fontName: "Rubik-Bold")
    /// Font `Rubik-Light`.
    static let rubikLight = Rswift.FontResource(fontName: "Rubik-Light")
    /// Font `Rubik-Medium`.
    static let rubikMedium = Rswift.FontResource(fontName: "Rubik-Medium")
    /// Font `Rubik-Regular`.
    static let rubikRegular = Rswift.FontResource(fontName: "Rubik-Regular")
    
    /// `UIFont(name: "Rubik-Bold", size: ...)`
    static func rubikBold(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: rubikBold, size: size)
    }
    
    /// `UIFont(name: "Rubik-Light", size: ...)`
    static func rubikLight(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: rubikLight, size: size)
    }
    
    /// `UIFont(name: "Rubik-Medium", size: ...)`
    static func rubikMedium(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: rubikMedium, size: size)
    }
    
    /// `UIFont(name: "Rubik-Regular", size: ...)`
    static func rubikRegular(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: rubikRegular, size: size)
    }
    
    static func validate() throws {
      if R.font.rubikMedium(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Rubik-Medium' could not be loaded, is 'Rubik-Medium.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.rubikRegular(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Rubik-Regular' could not be loaded, is 'Rubik-Regular.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.rubikBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Rubik-Bold' could not be loaded, is 'Rubik-Bold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
      if R.font.rubikLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'Rubik-Light' could not be loaded, is 'Rubik-Light.ttf' added to the UIAppFonts array in this targets Info.plist?") }
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 2 images.
  struct image {
    /// Image `Left`.
    static let left = Rswift.ImageResource(bundle: R.hostingBundle, name: "Left")
    /// Image `Right`.
    static let right = Rswift.ImageResource(bundle: R.hostingBundle, name: "Right")
    
    /// `UIImage(named: "Left", bundle: ..., traitCollection: ...)`
    static func left(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.left, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "Right", bundle: ..., traitCollection: ...)`
    static func right(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.right, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 1 view controllers.
  struct segue {
    /// This struct is generated for `SelectAirPodViewController`, and contains static references to 2 segues.
    struct selectAirPodViewController {
      /// Segue identifier `EnterName`.
      static let enterName: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SelectAirPodViewController, ClearNavigationController> = Rswift.StoryboardSegueIdentifier(identifier: "EnterName")
      /// Segue identifier `locate`.
      static let locate: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SelectAirPodViewController, LocatingViewController> = Rswift.StoryboardSegueIdentifier(identifier: "locate")
      
      /// Optionally returns a typed version of segue `EnterName`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func enterName(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SelectAirPodViewController, ClearNavigationController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.selectAirPodViewController.enterName, segue: segue)
      }
      
      /// Optionally returns a typed version of segue `locate`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func locate(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SelectAirPodViewController, LocatingViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.selectAirPodViewController.locate, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Locate`.
    static let locate = _R.storyboard.locate()
    /// Storyboard `Name`.
    static let name = _R.storyboard.name()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Locate", bundle: ...)`
    static func locate(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.locate)
    }
    
    /// `UIStoryboard(name: "Name", bundle: ...)`
    static func name(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.name)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try locate.validate()
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if UIKit.UIImage(named: "Right") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Right' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if UIKit.UIImage(named: "Left") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Left' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct locate: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = ClearNavigationController
      
      let bundle = R.hostingBundle
      let name = "Locate"
      
      static func validate() throws {
        if UIKit.UIImage(named: "Right") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Right' is used in storyboard 'Locate', but couldn't be loaded.") }
        if UIKit.UIImage(named: "Left") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Left' is used in storyboard 'Locate', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct name: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = ClearNavigationController
      
      let bundle = R.hostingBundle
      let name = "Name"
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}