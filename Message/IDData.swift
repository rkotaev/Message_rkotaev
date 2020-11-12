//
//  IDData.swift
//
//  Created by Kotaev Ruslan . on 26.01.20.
//

import SwiftUI


struct iDData : Identifiable {
    var id: String
    var name : String
    var msg : String
    @State var image : Data
}
