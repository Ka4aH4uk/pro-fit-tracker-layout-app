//
//  SessionController.swift
//  ProFitTracker
//
//  Created by K4 on 20.11.2023.
//

import UIKit

final class SessionController: PFBaseController {
    private let scrollView = UIScrollView() //
    private let contentView = UIView() //
    
    private let timerView = TimerView()
    private let statsView = StatsView(with: R.Strings.Session.workoutStats)
    private let stepsView = StepsView(with: R.Strings.Session.stepsCounter)
    
    private let timerDuration = 10.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        addNavBarButton(
            at: .left,
            with: timerView.state == .isRunning ? R.Strings.Session.navBarPause : R.Strings.Session.navBarStart
        )
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
    }
}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(scrollView)
        scrollView.setupView(contentView)
        contentView.setupView(timerView)
        contentView.setupView(statsView)
        contentView.setupView(stepsView)
        
        //        view.setupView(timerView)
        //        view.setupView(statsView)
        //        view.setupView(stepsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        // Констрейнты без ScrollView
        //        NSLayoutConstraint.activate([
        //            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
        //            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
        //            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
        //
        //            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
        //            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
        //            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
        //
        //            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
        //            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
        //            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
        //            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor),
        //        ])
        
        // Констрейнты со ScrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            timerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            statsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
            statsView.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -7.5),
            
            stepsView.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 7.5),
            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
            stepsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor),
            stepsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
        // Возврат на исходное значение
        timerView.callBack = {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.navBarRightButtonHandler()
            }
        }
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "9'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")])
        
        stepsView.configure(with: [.init(value: "8k", heightMultiplier: 1, title: "2/14"),
                                   .init(value: "7k", heightMultiplier: 0.8, title: "2/15"),
                                   .init(value: "3k", heightMultiplier: 0.4, title: "2/16"),
                                   .init(value: "6k", heightMultiplier: 0.7, title: "2/17")])
    }
}
