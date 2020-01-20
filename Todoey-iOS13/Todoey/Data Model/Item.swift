//
//  Item.swift
//  Todoey
//
//  Created by James Militante on 2020-01-13.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    // dynamic for RealmSwift to work
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    @objc dynamic var backgroundColor: String = ""
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
