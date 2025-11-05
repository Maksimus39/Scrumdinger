//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 05.11.2025.
//

import Foundation
import SwiftUI



struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
