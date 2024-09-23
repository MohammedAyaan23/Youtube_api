//
//  VideoRowView.swift
//  Youtube_api
//
//  Created by Mohammed Ayaan on 23/09/24.
//

import SwiftUI

struct VideoRowView: View {
    
    var video: Video
    
    var body: some View {
        
        VStack(alignment: .leading) {
            if let url = URL(string: video.snippet?.thumbnails?.medium?.url ?? "") {
                
                AsyncImage(url: url) { image in
                    // Image that is displayed
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                } placeholder: {
                    ProgressView()
                }
                
            }
            Text(video.snippet?.title ?? "")
                .bold()
        }
        .padding(.vertical)
        
        
    }
}


