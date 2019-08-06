//
//  MovieDetail.swift
//  MovieTracker
//
//  Created by ioannis giannakidis on 22/7/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    @State var movie: Movie
    @Environment(\.isPresented) var isPresented
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title: "title")
                    TextField("",text: $movie.title)
                }
            }
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title:"Rating")
                    HStack {
                        Spacer()
                        Text(String(repeating: "⭐", count: Int(movie.rating)))
                            .font(.title)
                        Spacer()
                    }
                    Slider(value:$movie.rating,from:1.0,through: 5.0,by:1.0)
                    
                }
            }
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title: "Watched")
                    Toggle(isOn: $movie.seen){
                        if movie.title == "" {
                        Text("I have seend this movie")
                        }else {
                            Text("I have seen \(movie.title)")

                        }
                    }
                }
            }
            Section {
                HStack {
                    Spacer()
                    Button(action:{
                        self.isPresented.value = false
                        
                    }) {
                            Text("Save")
                    }
                    Spacer()
                }
                }
        }.listStyle(.grouped)
        
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie:Movie())
    }
}
#endif

struct ControlTitle: View {
    var title:String
    var body: some View {
        return
            
        Text(title).font(.subheadline).foregroundColor(.red)
    }
    }

