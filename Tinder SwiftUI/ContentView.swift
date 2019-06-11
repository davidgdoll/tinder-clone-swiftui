//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by David Doll on 04/06/19.
//  Copyright © 2019 David Doll. All rights reserved.
//

import SwiftUI

func button(for icon: String) -> some View {
    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Image(icon)
            .renderingMode(.original)
    }
}

struct ContentView : View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            TopStack()
                .padding(.horizontal)
            CardView()
                .padding(.horizontal, 10)
            BottomStack()
        }
        .padding(.bottom, 15)
    }
}

struct BottomStack : View {
    var body: some View {
        HStack {
            button(for: "refresh_circle")
            button(for: "dismiss_circle")
            button(for: "super_like_circle")
            button(for: "like_circle")
            button(for: "boost_circle")
        }
    }
}

struct TopStack : View {
    var body: some View {
        HStack {
            button(for: "top_left_profile")
            Spacer()
            button(for: "fire")
            Spacer()
            button(for: "top_right_messages")
        }
    }
}

struct UserImageView : View {
    var body: some View {
        Image("kaori")
            .resizable()
            .overlay (
                Rectangle()
                    .fill (
                        LinearGradient(gradient: Gradient(colors: [.clear, .black]),
                                       startPoint: .center, endPoint: .bottom)
                    )
                    .clipped()
            )
            .cornerRadius(10, antialiased: true)
    }
}

struct UserInfoView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Kaori Miyazono, 30")
                .font(.title)
                .fontWeight(.regular)
                .color(.white)
            Text("Musician")
                .font(.system(size: 17))
                .fontWeight(.light)
                .color(.white)
            }
            .padding()
    }
}

struct CardView : View {
    var body: some View {
        ZStack(alignment: .leading) {
            UserImageView()
            UserInfoView()
        }
        .shadow(radius: 2)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
#endif
