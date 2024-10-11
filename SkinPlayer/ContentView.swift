//
//  ContentView.swift
//  SkinPlayer
//
//  Created by Elena Demidova on 11.10.24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {

    @ObservedObject var vm: ViewModel = .init()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Play: Skin - I'll try")
        }
        .padding()
        .onAppear {
            do {
                try vm.playSong()
            } catch {
                print("🔴 error \(error)")
            }
        }
    }
}

#Preview {
    ContentView()
}


class ViewModel: ObservableObject {
    var audioPlayer: AVAudioPlayer?// = AVAudioPlayer()

    func playSong() throws {
        // describe the bundle
        let bundle = Bundle.main
        // access the song
        guard let song1 = bundle.path(forResource: "Skin - I'll Try", ofType: "mp3") else { return }
        // check this sound with audioPlayer
//        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: song1))
//            print("sound found")
//        } catch {
//            print("sound not found")
//        }
        
        audioPlayer?.play()
    }
}
