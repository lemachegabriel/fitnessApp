//
//  Home.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 08/04/22.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var viewModel: DateViewModel
    
    var body: some View {
        VStack(spacing: 20){
            //MARK: Header Title
            HStack{
                Text("Esta Semana")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title)
                }
            }
            .foregroundColor(.white)
            
            //MARK: Header Calendar
            HStack(spacing: 10){
                ForEach(viewModel.currentWeek, id: \.self){date in
                    Text(viewModel.extractDate(date: date))
                        .fontWeight(viewModel.isSameDay(date1: viewModel.currentDay, date2: date) ? .bold : .semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, viewModel.isSameDay(date1: viewModel.currentDay, date2: date) ? 6 : 0)
                        .frame(width: viewModel.isSameDay(date1: viewModel.currentDay, date2: date) ? 140 : nil)
                        .background{
                            Capsule()
                                .fill(.ultraThinMaterial)
                                .environment(\.colorScheme, .light)
                                .opacity(viewModel.isSameDay(date1: viewModel.currentDay, date2: date) ? 0.8 : 0)
                        }
                        .onTapGesture {
                            withAnimation{
                                viewModel.currentDay = date
                            }
                        }
                }
            }
            .padding(.top, 10)
            //MARK: Steps Info
            VStack(alignment: .leading, spacing: 0){
                Text("Passos")
                    .fontWeight(.semibold)
                Text("9,569")
                    .font(.system(size: 45, weight: .bold))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 12)
            
            //MARK: Ring View
            RingCard()
        }
        .padding()
        .onAppear(perform: viewModel.extractCurrentWeek)
    }
}
