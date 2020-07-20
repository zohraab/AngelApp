//
//  Extensions.swift
//  Tests
//
//  Created by helenepetitjean on 13/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
