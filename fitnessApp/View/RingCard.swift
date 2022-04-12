//
//  RingCard.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 11/04/22.
//

import SwiftUI

struct RingCard: View {
    var body: some View {
        VStack(spacing: 15){
            Text("Progresso")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 20){
                ZStack{
                    ForEach(rings.indices, id: \.self){index in
                        ZStack{
                            Circle()
                                .stroke(.gray.opacity(0.3), lineWidth: 10)
                            Circle()
                                .trim(from: 0, to: rings[index].progress / 100)
                                .stroke(rings[index].keyColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                .rotationEffect(.init(degrees: -90))
                        }
                        .padding(CGFloat(index * 16))
                    }
                }
                .frame(width: 130, height: 130)
                    
                    VStack(alignment: .leading, spacing: 12){
                        ForEach(rings){ring in
                            Label{
                                HStack(alignment: .bottom, spacing: 6){
                                    Text("\(Int(ring.progress))%")
                                        .font(.title3.bold())
                                    Text(ring.value)
                                        .font(.caption)
                                }
                            } icon: {
                                Group{
                                    if ring.isText{
                                        Text(ring.keyIcon)
                                            .font(.title2)
                                    }
                                    else{
                                        Image(systemName: ring.keyIcon)
                                            .font(.title2)
                                    }
                                }
                                .frame(width: 30)
                            }
                        }
                    }
                    .padding(.leading,10)
            }
            .padding(.top,20)
        }
        .padding(.horizontal,20)
        .padding(.vertical,25)
        .background{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.ultraThinMaterial)
        }
    }
}

