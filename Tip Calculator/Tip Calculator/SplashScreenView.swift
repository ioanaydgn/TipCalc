//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Mert Ioan Aydoğan on 14.05.2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
        
        VStack {
            VStack {
                Image(systemName: "pencil.circle.fill")
                    .font(.system(size: 120))
                    .foregroundColor(.gray)
                Text("TIPcalc")
                    .font(Font.custom("Baskerville-Bold", size: 26))
                    .foregroundColor(.white.opacity(0.80))
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 2.4)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                self.isActive = true
            }
        }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .preferredColorScheme(.dark)
    }
}
