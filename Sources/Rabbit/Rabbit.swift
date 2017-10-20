/******************************************************************************
 ** auth: liukai
 ** date: 2017/7
 ** ver : 1.0
 ** desc:  说明
 ** Copyright © 2017年 尧尚信息科技(wwww.yourshares.cn). All rights reserved
 ******************************************************************************/

import UIKit.UIImage

#if !COCOAPODS
    import YsSwift
#endif


import UIKit.UIImage
    /// Alias for `UIImage`.
public typealias Image = UIImage

/// Represents an arbitrary target for image loading.
public protocol Target: class {
    /// Callback that gets called when the request gets completed.
    func handle(response: Result<Image>, isFromMemoryCache: Bool)
}

open class Rabbit {
    /// Loads an image into the given target.
    ///
    open static func loadImage(with url: URL, into target: Target) {
        Manager.shared.loadImage(with: url, into: target)
    }

}



