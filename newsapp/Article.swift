//
//  Article.swift
//  newsapp
//
//  Created by HYEOKBOOK on 02/07/2019.
//  Copyright © 2019 HYEOKBOOK. All rights reserved.
//

import Foundation

struct Article : Codable {
    var title : String = ""
    var desc : String = ""
    var newsImage : String = ""
    var author : String = ""
    var url : String = ""
    var name : String = ""
    
    enum CodingKeys : String, CodingKey{
        case title
        case desc = "description"
        case newsImage = "urlToImage"
        case author
        case url
        case name = "source"
    }
    
    enum SourceKeys : String, CodingKey{
        case name
    }
    
    init(from decoder:Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let names = try values.nestedContainer(keyedBy: SourceKeys.self, forKey: .name)
        
        title = try values.decode(String.self, forKey: .title)
        desc = try values.decode(String.self, forKey: .desc)
        newsImage = try values.decode(String.self, forKey: .newsImage)
        author = try values.decode(String.self, forKey: .author)
        url = try values.decode(String.self, forKey: .url)
        name = try names.decode(String.self, forKey: .name)
        
        
    }
    
}

struct ArticleDataStore : Codable {
    var articles : [Article]
}
