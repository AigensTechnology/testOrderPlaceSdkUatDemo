# OrderPlaceSdkSwift5Prd

If you need to Uat, please integrate [OrderPlaceSdkSwift5Prd
](https://github.com/AigensTechnology/OrderPlaceSdkSwift5Prd)

## config params ref

https://docs.google.com/document/d/1YkTXzsdmWD7Q8BgLVWlekI6nyiS1wcU2Y6T2aHUKiJw/edit?usp=sharing

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
* You must include the following key in info plist.
	- Info.plist must contain an NSCameraUsageDescription key with a string value explaining to the user how the app uses this data.
	- The app's Info.plist must contain an NSLocationWhenInUseUsageDescription key with a string value explaining to the user how the app uses this data
* set targets -> Build Setting -> search 'bitcode' -> Enable Bitcode: No
## Installation

OrderPlaceSdkPrd is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

* This is core function, including (scan / gps / apple pay)

```ruby
platform :ios, '9.0'

target 'YourProjectName' do

  use_frameworks!

pod 'OrderPlaceSdkSwift5Prd', '~> 0.1.1'

end

```

* If you want the alipay feature,pls

```rb
pod 'OrderPlaceSdkSwift5Prd/Alipay', '~> 0.1.1'
```
* If you want the wechat pay feature,pls

```rb
pod 'OrderPlaceSdkSwift5Prd/Wechat', '~> 0.1.1'
```

## Author

Aigens

## License

coming soon


