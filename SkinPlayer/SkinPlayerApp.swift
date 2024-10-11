//
//  SkinPlayerApp.swift
//  SkinPlayer
//
//  Created by Elena Demidova on 11.10.24.
//

import SwiftUI
import AVFAudio
import AVFoundation

@main
struct SkinPlayerApp: App {
    
    init() {
        configureAudioSession()
    }
    
    private func configureAudioSession() {
        // Retrieve the shared audio session.
        let audioSession = AVAudioSession.sharedInstance()
        do {
            // Set the audio session category and mode.
            try audioSession.setCategory(.playback, mode: .moviePlayback)
        } catch {
            print("Failed to set the audio session configuration")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
