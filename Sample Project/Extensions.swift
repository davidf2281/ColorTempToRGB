
//
//  Created by David Fearon on 13/12/2015.
//  Copyright © 2015 David Fearon. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

typealias Kelvin = CGFloat

extension UIColor {
    convenience init(temperature: Kelvin)
    {
        let components = componentsForColorTemperature(temperature: temperature)
        self.init(red: components.red, green: components.green, blue: components.blue, alpha: 1)
    }
}

extension Color {
    init(temperature: Kelvin) {
        let components = componentsForColorTemperature(temperature: temperature)
        self.init(red: components.red, green: components.green, blue: components.blue)
    }
}

/**

    Algorithm taken from Tanner Helland's post: http://www.tannerhelland.com/4435/convert-temperature-rgb-algorithm-code/

*/
func componentsForColorTemperature(temperature: Kelvin) -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
    let percentKelvin = temperature / 100;
    let red, green, blue: CGFloat

    red = clamp(percentKelvin <= 66 ? 255 : (329.698727446 * pow(percentKelvin - 60, -0.1332047592)));
    green = clamp(percentKelvin <= 66 ? (99.4708025861 * log(percentKelvin) - 161.1195681661) : 288.1221695283 * pow(percentKelvin - 60, -0.0755148492));
    blue = clamp(percentKelvin >= 66 ? 255 : (percentKelvin <= 19 ? 0 : 138.5177312231 * log(percentKelvin - 10) - 305.0447927307));

    return (red: red / 255, green: green / 255, blue: blue / 255)
    
    func clamp(_ value: CGFloat) -> CGFloat
    {
        return value > 255 ? 255 : (value < 0 ? 0 : value);
    }
}
