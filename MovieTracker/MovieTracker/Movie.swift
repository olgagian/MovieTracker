//
//  Movie.swift
//  MovieTracker
//
//  Created by ioannis giannakidis on 6/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct Movie: Identifiable {
    var id: UUID = UUID()
    var title: String = "Batman"
    var rating: Double = 3.0
    var seen: Bool = false
}
