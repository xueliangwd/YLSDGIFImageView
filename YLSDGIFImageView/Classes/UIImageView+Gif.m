//
//  UIImageView+Gif.m
//  Pods
// 支持gif图
//  Created by 于学良 on 2019/3/25.
//

#import "UIImageView+Gif.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "UIImageView+PlayGIF.h"
#import <UIKit/UIImageView.h>
@implementation UIImageView (Gif)

-(void)yl_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder{
    NSString *urlString = url.absoluteString;
        if ([urlString.lowercaseString containsString:@".gif"]) {
            //是gif图片
            if ([[SDImageCache sharedImageCache] diskImageDataExistsWithKey:urlString]) {
                NSData *data = [[SDImageCache sharedImageCache] diskImageDataForKey:urlString];
                self.gifData =data;
                [self startGIF];
            }else{
               
                self.image = placeholder;
                [[SDWebImageManager sharedManager].imageDownloader  downloadImageWithURL:url options:SDWebImageDownloaderAllowInvalidSSLCertificates progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
                    
                } completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
                    self.gifData =data;
                    [self startGIF];
                    [[SDImageCache sharedImageCache] storeImageDataToDisk:data forKey:urlString];
                }];
            }
            
        } else {
            //不是gif图片
            [self sd_setImageWithURL:url placeholderImage:placeholder] ;
        }
}
@end
