![](logo.png)

[![](https://img.shields.io/badge/contact-@thematerik-blue.svg?style=flat-square)](http://twitter.com/thematerik)
[![](https://img.shields.io/cocoapods/v/Unitility.svg?style=flat-square)](https://cocoapods.org/pods/Unitility)
[![](https://img.shields.io/travis/materik/unitility.svg?style=flat-square)](https://travis-ci.org/materik/unitility)
![](https://img.shields.io/cocoapods/p/Unitility.svg?style=flat-square)
![](https://img.shields.io/cocoapods/l/Unitility.svg?style=flat-square)

Easy to use and understand pod for storing, formatting and converting units of
different measurements.

## Install

```bash
pod install 'Unitility'
```

## Example

```objective-c
#import <Unitility/Length.h>

Meter *m = [Length meter:5.2f];
Foot *f = [m convertToFoot];
NSLog(@"%@", [f formatted]); // 17.06 ft
```

## Units

### Length

- Centimeter
- Foot
- Inch
- Meter

### Temperature

- Celcius
- Farenheit
- Kelvin

### Weight

- Gram
- Kilogram
- Pound
