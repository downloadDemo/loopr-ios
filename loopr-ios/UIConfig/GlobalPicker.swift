//
//  GlobalPicker.swift
//  loopr-ios
//
//  Created by xiaoruby on 2/24/18.
//  Copyright © 2018 Loopring. All rights reserved.
//

import SwiftTheme

enum GlobalPicker {
    
    // Default values
    static let backgroundColor: ThemeColorPicker = ["#f5f5f5", "#292929"]
    static let textColor: ThemeColorPicker = ["#000000cc", "#ffffffcc"]
    static let textLightColor: ThemeColorPicker = ["#00000099", "#ffffff66"]
    static let textHighLightColor: ThemeColorPicker = ["#00000099", "#383838"]
    
    // text colors
    static let barTextColors = ["#00000099", "#ffffff66"]
    static let barTextColor = ThemeColorPicker.pickerWithColors(barTextColors)
    static let barTintColor: ThemeColorPicker = ["#f5f5f5", "#222222"]
    static let tableViewBackgroundColor: ThemeColorPicker = ["#fff", "#222222"]

    // Navigation bar
    static let navigationBarTextColors = ["#fff", "#fff"]  // used in navigation map
    static let navigationBarTextColor = ThemeColorPicker.pickerWithColors(navigationBarTextColors)
    static let navigationBarTintColor: ThemeColorPicker = ["#2E2BA4", "#2E2BA4"]
    
    // button images
    static let button: ThemeImagePicker = ThemeImagePicker(images: getImage(from: UIColor.init(rgba: "#f5f5f5")), getImage(from: UIColor.init(rgba: "#292929")))
    static let buttonHighlight: ThemeImagePicker = ThemeImagePicker(images: #imageLiteral(resourceName: "Header-plain"), #imageLiteral(resourceName: "Header-plain"))
    static let backButton: ThemeImagePicker = ThemeImagePicker(images: #imageLiteral(resourceName: "Back-button-light"), #imageLiteral(resourceName: "Back-button-dark"))
    static let backButtonHighlight: ThemeImagePicker = ThemeImagePicker(images: #imageLiteral(resourceName: "Back-button-light").alpha(0.3), #imageLiteral(resourceName: "Back-button-dark").alpha(0.3))
    static let indicator: ThemeImagePicker = ThemeImagePicker(images: #imageLiteral(resourceName: "Indicator-light"), #imageLiteral(resourceName: "Indicator-dark"))
    
    static func getImage(from color: UIColor) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return colorImage!
    }
}
