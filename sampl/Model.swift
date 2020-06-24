//
//  Kasen.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import Foundation

// model class
class Kasen {
    let id: String
    let name: String
    let description: String
    let imageUrl: String
    init (id: String, name: String, description: String, imageUrl: String) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.description = description
    }
}
