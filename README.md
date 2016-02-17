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
pod 'Unitility'
```

## Swift (Default)

```bash
pod 'Unitility/Swift'
```

## Objective-C

```bash
pod 'Unitility/ObjC'
```

## Example

```swift
import Unitility

let m = Meter(5.2)
let f = m.convertToFoot()
print(f.formatted()) // 17.06 ft
```

```objective-c
#import <Unitility/Length.h>

Meter *m = [Length meter:5.2f];
Foot *f = [m convertToFoot];
NSLog(@"%@", [f formatted]); // 17.06 ft
```

## Supported Units

### Length

- Centimeter
- Foot (*working on Swift support*)
- Inch (*working on Swift support*)
- Meter

### Speed  (*working on Swift support*)

- Kilometer/Hour
- Knot
- Meter/Second
- Mile/Hour

### Temperature (*working on Swift support*)

- Celcius
- Farenheit
- Kelvin

### Weight (*working on Swift support*)

- Gram
- Kilogram
- Ounce
- Pound

## Notes

- Working on adding more units and measurements
- Accepting Issues and Pull Requests
