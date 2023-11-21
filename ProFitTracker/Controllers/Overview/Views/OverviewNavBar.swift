//
//  OverviewNavBar.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        
        addView(titleLabel)
        addView(allWWorkoutsButton)
        addView(addButton)
        addView(weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),

            titleLabel.centerYAnchor.constraint(equalTo: allWWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
        allWWorkoutsButton.setTitle(R.Strings.Overview.allWorkoutButtons)
        
        addButton.setImage(R.Images.Common.add, for: .normal)
    }
}
