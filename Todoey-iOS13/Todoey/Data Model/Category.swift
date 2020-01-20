//
//  Category.swift
//  Todoey
//
//  Created by James Militante on 2020-01-13.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    // dynamic for RealmSwift to work
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
