//
//  SearchResultController.swift
//  ItunesSearch2
//
//  Created by Taylor Lyles on 9/3/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

class SearchResultController {
	
	let baseURL = URL(string: "https://itunes.apple.com/search")!
	
	var searchResults: [SearchResult] = []
	
	func performSearch(with searchTerm: String, resultType: ResultType, completion: @escaping (Error?) -> Void) {
		
		let searchURL = baseURL.appendingPathComponent("searchResults")
		
		var components = URLComponents(url: searchURL, resolvingAgainstBaseURL: true)
		
		let searchItem = URLQueryItem(name: "term", value: searchTerm)
		
		let searchType = URLQueryItem(name: "entity", value: resultType.rawValue)
		components?.queryItems = [searchItem, searchType]
	}
}
