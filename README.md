# ColorTempToRGB
Swift implementation of Tanner Helland's [color-temperature-to-RGB algorithm](http://www.tannerhelland.com/4435/convert-temperature-rgb-algorithm-code).

[UIColor+Temperature.swift](https://github.com/davidf2281/ColorTempToRGB/blob/master/Sample%20Project/UIColor+Temperature.swift) is the `UIColor` extension that does the business.

## Usage
Instantiate a `UIColor` using the new convenience initializer, passing in the desired color temperature:

`let warmWhiteColor = UIColor(temperature: 2700)`
