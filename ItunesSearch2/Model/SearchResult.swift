//
//  SearchResult.swift
//  ItunesSearch2
//
//  Created by Taylor Lyles on 9/3/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

struct SearchResults: Codable {
	let results: [SearchResult]
}

struct SearchResult: Codable {
	let title: String
	let creator: String
	
	enum CodingKeys: String, CodingKey {
		case title = "trackName"
		case creator = "artistName"
	}
}

