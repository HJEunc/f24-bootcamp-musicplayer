//
//  ContentView.swift
//  musicapp
//
//  Created by Harrison Enyeart on 9/24/24.
//

import SwiftUI

//
//  ContentView.swift
//  f24-bootcamp-musicplayer
//
//  Created by Harrison Enyeart on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var songProgress: Double = 0.5
    
    var body: some View {
        ZStack {
            // Background Image with Blur and Opacity
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.75)
            
            VStack(spacing: 20) {
                // Album Cover
                Image("In Rainbows copy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .cornerRadius(10)
                    .padding(.top, 50)
                
                // Song Information
                VStack {
                    Text("Bodysnatchers")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Radiohead")
                        .font(.subheadline)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.395))
                }
                .padding(.top, 20)
                
                // Progress Bar and Time
                VStack {
                    Slider(value: $songProgress, in: 0...1)
                        .frame(width: 300)
                        .accentColor(.black)
                    
                    HStack {
                        Text("0:00")
                        Spacer()
                               .frame(width: 270)
                        Text("4:02")
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                // Playback Controls
                HStack(spacing: 40) {
                    Button(action: {
                        // Previous track
                    }) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    Button(action: {
                        // Play/pause
                    }) {
                        Image(systemName: "play.fill") // Toggle with "pause.fill"
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    Button(action: {
                        // Next track
                    }) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.top, 30)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

#Preview {
    ContentView()
}
