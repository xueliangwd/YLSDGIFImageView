//
//  UIImageView+Gif.h
//  Pods
//  支持gif图
//  Created by 于学良 on 2019/3/25.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Gif)
-(void)yl_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;

@end

NS_ASSUME_NONNULL_END
