//
//  SheetView.swift
//  Sheet
//
//  Created by Jordan Singer on 12/19/20.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 8) {
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .frame(width: 128, height: 224)
                    .foregroundColor(Color(UIColor.systemFill))
                Text("Now Playing")
                    .font(.title)
                Text("You can now swipe up to access Repeat, Shuffle, and Up Next.")
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            Button(action: { }) {
                Text("Got It")
                    .font(.headline)
            }
            .padding(.bottom, 32)
        }
        .background(Blur(style: .systemMaterial))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}

struct Blur: UIViewRepresentable {
    let style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
