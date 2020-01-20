//
//  PostData.swift
//  H4X0R News
//
//  Created by James Militante on 2020-01-11.
//  Copyright © 2020 James Militante. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
