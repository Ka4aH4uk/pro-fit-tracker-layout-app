//
//  Resources.swift
//  ProFitTracker
//
//  Created by K4 on 18.11.2023.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#FE6C3A")
        static let inactive = UIColor(hexString: "#929DA5")
        static let shadow = UIColor(hexString: "#FEDBD1")
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview:
                    return "Overview"
                case .session:
                    return "Session"
                case .progress:
                    return "Progress"
                case .settings:
                    return "Settings"
                }
            }
        }
        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorkoutButtons = "All Workouts"
        }
        
        enum Session {
            static let navBarStart = "Start"
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            static let completed = "Completed"
            static let remaining = "Remaining"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let dailyPerformance = "Daily performance"
            static let last7Days = "Last 7 days"
            
            static let monthlyPerformance = "Monthly performance"
            static let last10Months = "Last 10 months"
        }
        
        enum Settings { }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview:
                    return UIImage(named: "House Icon")
                case .session:
                    return UIImage(named: "Clock Icon")
                case .progress:
                    return UIImage(named:"Analytics Icon")
                case .settings:
                    return UIImage(named:"Gear Icon")
                }
            }
        }
        
        enum Overview {
            static let rightArrow = UIImage(named: "Right Arrow")
            static let checkmarkNotDone = UIImage(named: "Oval")
            static let checkmarkDone = UIImage(named: "Checkmark Done")
        }
        
        enum Session {
            enum Stats {
                static let averagePace = UIImage(named: "Speed Icon")
                static let heartRate = UIImage(named: "Heart Beat Icon")
                static let totalDistance = UIImage(named: "Maps Icon")
                static let totalSteps = UIImage(named: "Steps Icon")
            }
        }
        
        enum Common {
            static let downArrow = UIImage(named: "Down Arrow")
            static let add = UIImage(named: "Add Button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
