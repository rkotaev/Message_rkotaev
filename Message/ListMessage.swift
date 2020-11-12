//
//  ListMessage.swift
//
//  Created by Kotaev Ruslan . on 26.01.20.
//

import SwiftUI


struct ListMessage : View {
    
    var msg = ""
    var defaultimage : UIImage = UIImage(named: "popka")!
    
    var Message = false
    var user = ""
    
    @Binding var image : Data
    var body: some View {
         
        HStack {
            if Message {
                Spacer()
                
                HStack {
                Text(msg).padding(10).background(Color.secondary)
                .cornerRadius(18)
                    .foregroundColor(.white)
                    
                    Image(uiImage: UIImage(data: self.image)!).resizable()
                        .frame(width: 45, height: 45)
                    .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                }
            } else {
                HStack {
                    Image(uiImage: UIImage(data: self.image) ?? defaultimage).resizable()
                        .frame(width: 45, height: 45)
                    .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    
                    Text(msg).padding(10).background(Color.blue)
                    .cornerRadius(28)
                        .foregroundColor(.white)
                    
                }
                Spacer()
            }
        }
    }
}
