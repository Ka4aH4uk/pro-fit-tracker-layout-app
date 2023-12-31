//
//  MonthlyPerformanceView.swift
//  ProFitTracker
//
//  Created by K4 on 23.11.2023.
//

import UIKit

final class MonthlyPerformanceView: PFBaseInfoView {
    
    private let chartsView = PFChartsView()
    
    func configure(with items: [PFChartsView.Data], topChartOffset: Int) {
        chartsView.configure(with: items, topChartOffset: topChartOffset)
    }
}

extension MonthlyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(chartsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
