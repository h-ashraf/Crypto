//
//  UIApplication.swift
//  Crypto Tracker
//
//  Created by Hamad Ashraf on 9/9/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
