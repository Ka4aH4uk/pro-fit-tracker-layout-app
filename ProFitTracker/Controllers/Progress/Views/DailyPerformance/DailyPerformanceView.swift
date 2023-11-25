//
//  DailyPerformanceView.swift
//  ProFitTracker
//
//  Created by K4 on 23.11.2023.
//

import UIKit

final class DailyPerformanceView: PFBaseInfoView {
    
    private let barsView = PFBarsView()
    
    func configure(with items: [PFBarView.Data]) {
        barsView.configure(with: items)
    }
}

extension DailyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(barsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
