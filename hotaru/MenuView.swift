//
//  MenuView.swift
//  hotaru
//
//  Created by 多田隆人 on 2023/07/17.
//

import SwiftUI
import AVFoundation

struct MenuView: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    let soundURL = Bundle.main.url(forResource: "hotaru", withExtension: "mp3")
    
    
    var body: some View {
        Button {
            if let soundURL = Bundle.main.url(forResource: "hotaru", withExtension: "mp3") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                    audioPlayer?.prepareToPlay()
                    audioPlayer?.play()
                } catch {
                    print("Error playing sound: \(error)")
                }
            } else {
                print("Sound file not found")
            }
        } label: {
            Text("再生する")
        }
        
        Button {
            if let soundURL = Bundle.main.url(forResource: "hotaru", withExtension: "mp3") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                    audioPlayer?.prepareToPlay()
                    audioPlayer?.stop()
                } catch {
                    print("Error playing sound: \(error)")
                }
            } else {
                print("Sound file not found")
            }
        } label: {
            Text("停止する")
        }
        
        Button {
            exit(0)
        } label: {
            Text("アプリを終了する")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
