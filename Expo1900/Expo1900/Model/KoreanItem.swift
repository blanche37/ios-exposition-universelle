//
//  KoreanItem.swift
//  Expo1900
//
//  Created by yun on 2022/01/24.
//

import Foundation

struct KoreanItem: Codable {
    let itemName: String
    let imageName: String
    let shortDescription: String
    let description: String
    
    private enum CodingKeys: String , CodingKey {
        case itemName = "name"
        case imageName = "image_name"
        case shortDescription = "short_desc"
        case description = "desc"
    }
}
