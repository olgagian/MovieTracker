//
//  MovieDetail.swift
//  MovieTracker
//
//  Created by ioannis giannakidis on 22/7/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    @State var title:String = ""
    @State var rating = 3.0
    @State var seen = false
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title: "title")
                    TextField("",text: $title)
                }
            }
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title:"Rating")
                    HStack {
                        Spacer()
                        Text(String(repeating: "⭐", count: Int(rating)))
                            .font(.title)
                        Spacer()
                    }
                    Slider(value:$rating,from:1.0,through: 5.0,by:1.0)
                    
                }
            }
            Section {
                VStack(alignment: .leading){
                    ControlTitle(title: "Watched")
                    Toggle(isOn: $seen){
                        if title == "" {
                        Text("I have seend this movie")
                        }else {
                            Text("I have seen\(title)")

                        }
                    }
                }
            }
            Section {
                HStack {
                    Spacer()
                    Button(action:{}) {
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
        MovieDetail()
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

