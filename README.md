# ColorTempToRGB
Swift implementation of Tanner Helland's [color-temperature-to-RGB algorithm](http://www.tannerhelland.com/4435/convert-temperature-rgb-algorithm-code).

You'll find the algorithm and new initializers for UIKit's `UIColor` and SwiftUI's `Color` in [Extensions.swift](https://github.com/davidf2281/ColorTempToRGB/blob/master/Sample%20Project/Extensions.swift). You can instantiate a color simply by passing in the desired color temperature in Kelvin.

## Usage

For UIKit:

`let warmWhiteColor = UIColor(temperature: 2700)`

For SwiftUI:

`let warmWhiteColor = Color(temperature: 2700)`
