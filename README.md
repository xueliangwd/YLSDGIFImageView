# YLSDGIFImageView

[![CI Status](https://img.shields.io/travis/yuxueliang/YLSDGIFImageView.svg?style=flat)](https://travis-ci.org/yuxueliang/YLSDGIFImageView)
[![Version](https://img.shields.io/cocoapods/v/YLSDGIFImageView.svg?style=flat)](https://cocoapods.org/pods/YLSDGIFImageView)
[![License](https://img.shields.io/cocoapods/l/YLSDGIFImageView.svg?style=flat)](https://cocoapods.org/pods/YLSDGIFImageView)
[![Platform](https://img.shields.io/cocoapods/p/YLSDGIFImageView.svg?style=flat)](https://cocoapods.org/pods/YLSDGIFImageView)

## Example

首先gif图是能正常显示，一旦侧滑VC，或者滚动table，gif图就消失不见。
UIImageView显示GIF的本质是不停的去刷新换图，但这种绘制操作肯定是消耗资源的，所以在用户与界面有交互的时候，为了保证界面的流畅，该操作应该会被挂起，也就是说，这种操作应该不是一直在NSDefaultRunLoopMode中
写一个UIImageView的category，如果是GIF图，就控制在恰当的时机切换不同的mode，展示图片还是GIF，这样的工作呢，很多前辈已经替我们做了，github搜索就能有，比如：UIImageView-PlayGIF
http://www.code4app.com/thread-11561-1-1.html
## Requirements

## Installation

YLSDGIFImageView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YLSDGIFImageView'
```

## Author

yuxueliang, yuxueliang@jd.com

## License

YLSDGIFImageView is available under the MIT license. See the LICENSE file for more info.
