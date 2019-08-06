//
//  MovieList.swift
//  MovieTracker
//
//  Created by ioannis giannakidis on 6/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @State var isPresented = false

    var movies: [Movie] = [Movie(),Movie(),Movie()]
     var modal: some View {
           MovieDetail(movie: Movie())
       }
    var body: some View {
        NavigationView{
            List{
                Button("add Movie"){
                    self.isPresented.toggle()
                }.sheet(isPresented: $isPresented, content:{self.modal})
                
            
        ForEach(movies) { movie in
            NavigationLink(destination:MovieDetail(movie: movie)){
                Text(movie.title)
            }
        }
        }
 }
}

#if DEBUG
struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
    #endif
}
