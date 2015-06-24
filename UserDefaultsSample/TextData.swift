//
//  TextData.swift
//  UserDefaultsSample
//
//  Created by shinobu okano on 2015/06/24.
//  Copyright (c) 2015年 shinobu okano. All rights reserved.
//

import Foundation

class TextData {

    static let textKey = "text"

    class func text() -> String? {
        let ud = NSUserDefaults.standardUserDefaults()
        return ud.stringForKey(textKey)
    }

    class func setText(text : String) {
        let ud = NSUserDefaults.standardUserDefaults()
        ud.setObject(text, forKey: textKey)
        // 値の保存等を即時反映するならsynchronizeする
        ud.synchronize()
    }

    class func removeText() {
        let ud = NSUserDefaults.standardUserDefaults()
        ud.removeObjectForKey(textKey)
    }
}