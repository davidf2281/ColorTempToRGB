//
//  ColorTempToRGBTests.swift
//  ColorTempToRGBTests
//
//  Created by David Fearon on 21/06/2018.
//  Copyright © 2018 David Fearon. All rights reserved.
//

import XCTest

class ColorTempToRGBTests: XCTestCase
{
    func testWhitePointColorTemperatureProducesMaxRGBValues()
    {
        let color6600K = UIColor(temperature:6600)
        
        var red:CGFloat = 0, green:CGFloat = 0, blue:CGFloat = 0, alpha:CGFloat = 0
        
        color6600K.getRed(&red, green:&green,  blue: &blue, alpha: &alpha)
        
        XCTAssert(red == 1)
        XCTAssert(green == 1)
        XCTAssert(blue == 1)
        XCTAssert(alpha == 1)
    }
}
