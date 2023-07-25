//
//  ColorTempToRGBTests.swift
//  ColorTempToRGBTests
//
//  Created by David Fearon on 21/06/2018.
//  Copyright © 2018 David Fearon. All rights reserved.
//

import XCTest

import UIKit
import SwiftUI

class ColorTempToRGBTests: XCTestCase
{
    func testColorComponentsFor2400K() {
        let components = componentsForColorTemperature(temperature: 2700)
        
        XCTAssertEqual(components.red, 1.0)
        XCTAssertEqual(components.green, 0.6538038042674791)
        XCTAssertEqual(components.blue, 0.3427666343489381)
    }
    
    func testColorComponentsClampedFor6600K() {
        let components = componentsForColorTemperature(temperature: 6600)
        
        XCTAssertEqual(components.red, 1.0)
        XCTAssertEqual(components.green, 1.0)
        XCTAssertEqual(components.blue, 1.0)
    }
}
