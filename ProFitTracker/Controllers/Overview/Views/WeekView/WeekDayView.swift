//
//  WeekDayView.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        
        private let nameLable = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.stripDate() == Date().stripDate()
            backgroundColor = isToday ? R.Colors.active : R.Colors.background
            
            nameLable.text = name.uppercased()
            nameLable.textColor = isToday ? .white : R.Colors.inactive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : R.Colors.inactive
        }
    }
}

extension WeekView.WeekDayView {
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
        stackView.addArrangedSubview(nameLable)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
                
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLable.font = R.Fonts.helveticaRegular(with: 9)
        nameLable.textAlignment = .center
        
        dateLabel.font = R.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
