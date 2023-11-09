//
//  String.swift
//  Crypto Tracker
//
//  Created by Hamad Ashraf on 9/9/23.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
