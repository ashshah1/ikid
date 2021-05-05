//
//  ContentView.swift
//  iKid
//
//  Created by Ashni Shah on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(red: 0.19, green: 0.26, blue: 0.36)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("Hey, you")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .padding(20)
                        
                        Text("Yes, you")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(20)
                        
                        
                        Text("Ever been out with a friend and they’re really really funny and you’re ... well ... not?")
                            .foregroundColor(.white)
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Fear no more. I have three LOL certified jokes for you right here.")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .padding(30)
                    }
                }
                .toolbar {
                    
                    ToolbarItem(placement: .bottomBar) {
                        HStack(spacing: 50) {
                            
                            NavigationLink(
                                destination: DadJokeView(),
                                label: {
                                    Text("dad")
                                })
                            NavigationLink(
                                destination: PunView(),
                                label: {
                                    Text("pun")
                                })
                            NavigationLink(
                                destination: GoodJokeView(),
                                label: {
                                    Text("good")
                                })
                        }
                    }
                }
                
            }
        }
    }
}

struct DadJokeView: View {
    @State var answer = false;
    
    var body: some View {
        VStack (alignment: .center) {
            Text("Dogs can't operate MRI machines")
                .foregroundColor(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                .font(.title2)
                .bold()
                .padding(20)
                .multilineTextAlignment(.center)
            
            
            if answer {
                Text("But CATscan")
                    .foregroundColor(.black)
                    .font(.title3)
                    .bold()
                
            }
            
            if (!answer) {
                Button(action: {
                    answer.toggle()
                }) {
                    Text("show answer")
                        .bold()
                        .padding(15)
                        .background(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
            }
        }
    }
}

struct PunView: View {
    @State var answer = false;
    
    var body: some View {
        VStack (alignment: .center) {
            Text("What do you call it when computer science majors make fun of each other?")
                .foregroundColor(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                .font(.title2)
                .bold()
                .padding(20)
                .multilineTextAlignment(.center)
            
            
            if answer {
                Text("Cyber boolean")
                    .foregroundColor(.black)
                    .font(.title3)
                    .bold()
                
            }
            
            if (!answer) {
                Button(action: {
                    answer.toggle()
                }) {
                    Text("show answer")
                        .bold()
                        .padding(15)
                        .background(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
            }
        }
    }
}

struct GoodJokeView: View {
    @State var answer = false;
    
    var body: some View {
        VStack (alignment: .center) {
            Text("I was at the Apple store and I saw someone steal something")
                .foregroundColor(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                .font(.title2)
                .bold()
                .padding(20)
                .multilineTextAlignment(.center)
            
            
            if answer {
                Text("Guess you can call me an iWitness")
                    .foregroundColor(.black)
                    .font(.title3)
                    .bold()
                
            }
            
            if (!answer) {
                Button(action: {
                    answer.toggle()
                }) {
                    Text("show answer")
                        .bold()
                        .padding(15)
                        .background(Color.init(red: 0.19, green: 0.26, blue: 0.36))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}


