//
//  PFChartsView.swift
//  ProFitTracker
//
//  Created by K4 on 23.11.2023.
//

import UIKit

extension PFChartsView {
    struct Data {
        let value: Int
        let title: String
    }
}

final class PFChartsView: PFBaseView {
    
    private let yAxisView = YAxisView()
    private let xAxisView = XAxisView()
    private let chartView = ChartView()
    
    func configure(with data: [PFChartsView.Data], topChartOffset: Int = 10) {
        yAxisView.configure(with: data)
        xAxisView.configure(with: data)
        chartView.configure(with: data, topChartOffset: topChartOffset)
    }
}

extension PFChartsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(yAxisView)
        setupView(xAxisView)
        setupView(chartView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            yAxisView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisView.topAnchor.constraint(equalTo: topAnchor),
            yAxisView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12),
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 8),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 4),
            
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 16),
            chartView.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -4),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -16),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}