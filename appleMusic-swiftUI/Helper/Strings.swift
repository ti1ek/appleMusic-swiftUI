//
//  Strings.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import Foundation

enum Strings {
    enum Tabbar {
        static let tabBarItemLeft = "square.stack.fill"
        static let tabBarItemMiddle = "dot.radiowaves.left.and.right"
        static let tabBarItemRigth = "magnifyingglass"
        
        static let tabBarLeftName = "Медиатека"
        static let tabBarMiddleName = "Радио"
        static let tabBarRigthName = "Поиск"
    }
    
    enum MusicLabel {
        static let topText = "Ищете свою музыку?"
        static let bottomText = "Здесь появится купленная вами в ITunes Store музыка"
    }
    
    enum MusicPlayer{
        static let currentImageTrack = "play.square.fill"
        static let currentNameTrack = "Starboy"
        static let playButton = "play.fill"
        static let nextTrackButton = "forward.fill"
    }
    
    enum ListCell {
        static let image = "circle"
        static let selectedImage = "checkmark.circle.fill"
    }
    
    enum NavigationTitles {
        static let radioScreenTitles = "Radio"
        static let searchScreenTitles = "Поиск"
        static let mediatekaScreenTitles = "Медиатека"
    }
    
    enum MusicPlayerAllScreen {
        static let photoSinger = "20"
        static let nameComposition = "The Weekend, Daf Punk"
        static let infoAboutTrack = "ellipsis.circle.fill"
        
        static let passedTime = "00:00"
        static let remainingTime = "-03:48"
        
        static let backTrack = "backward.fill"
        static let nextTrack = "forward.fill"
        
        static let leftIconVolume = "speaker.fill"
        static let rightIconVolume = "speaker.wave.2.fill"
    }
    
}
