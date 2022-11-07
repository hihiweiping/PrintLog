//
//  PrintLog.swift
//  weiiUtil
//
//  Created by candyhouse on 2022/11/7.
//

import Foundation
import os.log
class l {
  static func d(_ items: Any..., file: String = #file, function: String = #function,
         line: Int = #line, tag: String = "yourName =>") {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm:ss"
    dateFormatter.timeZone = TimeZone(abbreviation: "Asia/Taipei")
    dateFormatter.locale = Locale(identifier: "ja_JP")
    let ismain = (Thread.isMainThread) ? "主線":"副線"
    let content = "\(tag) \(dateFormatter.string(from: Date())) \(items) \(fileName):\(line) \(ismain)"
    print(content)
    #endif
  }
}
