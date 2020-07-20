//
//  Helper.swift
//  Tests
//
//  Created by helenepetitjean on 13/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import Foundation

func getCreationDate(for file: URL) -> Date {
    if let attributes = try? FileManager.default.attributesOfItem(atPath: file.path) as [FileAttributeKey: Any],
        let creationDate = attributes[FileAttributeKey.creationDate] as? Date {
        return creationDate
    } else {
        return Date()
    }
}
