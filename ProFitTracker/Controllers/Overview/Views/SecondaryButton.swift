//
//  SecondaryButton.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let label = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
}

private extension SecondaryButton {
    func setupViews() {
        addView(label)
        addView(iconView)
    }
    
    func constraintViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configureAppearance() {
        backgroundColor = R.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        
        label.textColor = R.Colors.active
        label.font = R.Fonts.helveticaRegular(with: 15)
        label.textAlignment = .center
        
        iconView.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = R.Colors.active
    }
}
