//
//  WeekDayView.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

extension WeekView {
    final class WeekDayView: WABaseView {
        
        private let nameLabel: UILabel = {
            let lable = UILabel()
            lable.font = R.Fonts.helveticaRegular(with: 9)
            lable.textAlignment = .center
            return lable
        }()
        
        private let dateLabel: UILabel = {
            let lable = UILabel()
            lable.font = R.Fonts.helveticaRegular(with: 15)
            lable.textAlignment = .center
            return lable
        }()
        
        private let stackView: UIStackView = {
            let view = UIStackView()
            view.spacing = 3
            view.axis = .vertical
            return view
        }()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isToday = currentDay.stripDate() == Date().stripDate()
            backgroundColor = isToday ? R.Colors.active : R.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : R.Colors.inactive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : R.Colors.inactive
        }
    }
}

extension WeekView.WeekDayView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        stackView.addArrangedSubview(nameLabel)
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
    }
}
