//
//  MusicPlayerView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct MusicPlayerView: View {
    var animation: Namespace.ID
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            HStack(spacing: 15) {
                
                if expand{Spacer()}
                
                Image(Strings.MusicPlayerAllScreen.photoSinger)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand {
                    Text(Strings.MusicPlayer.currentNameTrack)
                        .font(.title2)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: Strings.MusicPlayer.playButton)
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: Strings.MusicPlayer.nextTrackButton)
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
            
            VStack(spacing: 15) {
                Spacer(minLength: 0)
                HStack {
                    if expand  {
                        VStack(alignment: .leading) {
                            Text(Strings.MusicPlayerAllScreen.nameComposition)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.title3)
                            HStack(spacing: 100) {
                                Text(Strings.MusicPlayer.currentNameTrack)
                                    .font(.title2)
                                    .foregroundColor(.white)
                                Spacer(minLength: 0)
                                
                                Button(action: {}) {
                                    Image(systemName: Strings.MusicPlayerAllScreen.infoAboutTrack)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
                .padding()
                .padding(.top, 20)
                
                PlayProgress()
                ButtonMediaAllScreen()
                
                Spacer(minLength: 0)
                
                VolumeControl()
                    .padding()
                
                BottomButtonMedia()
                    .padding(.bottom, safeArea?.bottom == 0 ? 60 : safeArea?.bottom)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                if !expand {
                    BlurView()
                    Divider()
                } else {
                    BlurViewAllScreen()
                }
            }
                .onTapGesture(perform: {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.9, blendDuration: 0.5)) {
                        expand = true
                    }
                })
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : 0)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(ended(value:)).onChanged(changed(value:)))
        .ignoresSafeArea()
    }
    
    func changed(value: DragGesture.Value) {
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    
    func ended(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.9, blendDuration: 1)) {
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}

