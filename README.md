# CCSize
<!-- [![CI Status](https://img.shields.io/travis/RachalZhou/CCSize.svg?style=flat)](https://travis-ci.org/RachalZhou/CCSize) -->
[![Version](https://img.shields.io/cocoapods/v/CCSize.svg?style=flat)](https://cocoapods.org/pods/CCSize)
[![Platform](https://img.shields.io/cocoapods/p/CCSize.svg?style=flat)](https://cocoapods.org/pods/CCSize)

* Support Swift & Objective-C
* Support full screen iPhone like iPhone X

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* iOS10+
* Swift5+

## Installation

CCSize is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CCSize'
```

## Useage

* Swift
```
import CCSize

print(Screen.width)
print(StatusBar.height)
print(Tabbar.height)
```

* Objective-C
```
#import <CCSize.h>

NSLog(@"%.2f", ScreenHeight);
NSLog(@"%.2f", StatusBarHeight);
NSLog(@"%.2f", TabBarHeight);
```

**See detail usage in the example project.**

## Author

RachalZhou, zrcrachal@gmail.com

## License

CCSize is available under the MIT license. See the LICENSE file for more info.