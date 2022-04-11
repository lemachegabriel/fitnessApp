//
//  DateControllers.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 11/04/22.
//

import Foundation

class DateViewModel: ObservableObject{
    @Published var currentWeek: [Date] = []
    @Published var currentDay: Date = Date()
    
    func extractCurrentWeek(){
        let calendar = Calendar.current
        let week = calendar.dateInterval(of: .weekOfMonth, for: Date())
        
        guard let firstDay = week?.start else{
            return
        }
        
        (0..<7).forEach{day in
            if let weekDay = calendar.date(byAdding: .day, value: day,  to: firstDay){
                currentWeek.append(weekDay)
            }
        }
    }
    
    func extractDate(date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateFormat = (isSameDay(date1: currentDay, date2: date) ? "dd MMM" : "dd")
        
        return (isDateToday(date: date) && isSameDay(date1: currentDay, date2: date) ? "Hoje, " : "") + formatter.string(from: date)
    }
    
    func isDateToday(date: Date)->Bool{
        let calendar = Calendar.current
        
        return calendar.isDateInToday(date)
    }
    
    func isSameDay(date1: Date, date2: Date)->Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
}
