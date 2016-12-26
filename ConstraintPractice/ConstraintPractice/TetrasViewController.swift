//
//  TetrasViewController.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/25/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class TetrasViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bannerImageView.accessibilityIdentifier = "BannerImageView"
        self.orangeBackgroundView.accessibilityIdentifier = "OrangeImageView"
        self.iBlock.accessibilityIdentifier = "IBlock"
        self.tBlock.accessibilityIdentifier = "TBlock"
        self.jBlock.accessibilityIdentifier = "JBlock"
        self.zBlock.accessibilityIdentifier = "ZBlock"
        
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.bannerImageView)
        self.view.addSubview(self.orangeBackgroundView)
        self.orangeBackgroundView.addSubview(self.iBlock)
        self.orangeBackgroundView.addSubview(self.tBlock)
        self.orangeBackgroundView.addSubview(self.jBlock)
        self.orangeBackgroundView.addSubview(self.zBlock)
        setupVerticalConstraint()

        // Do any additional setup after loading the view.
    }

    lazy var bannerImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        view.image = #imageLiteral(resourceName: "tetris_banner")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    lazy var orangeBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 140/255, blue: 0/255, alpha: 1.0)
        return view
    }()
    
    lazy var iBlock: IBlock = {
        let view = IBlock()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tBlock: TBlock = {
        let view = TBlock()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var jBlock: JBlock = {
        let view = JBlock()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var zBlock: ZBlock = {
        var view = ZBlock()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupVerticalConstraint() {
        let _ = [
            bannerImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            bannerImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bannerImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
            ].map{$0.isActive = true}
        let _ = [
            orangeBackgroundView.topAnchor.constraint(equalTo: self.bannerImageView.bottomAnchor),
            orangeBackgroundView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            orangeBackgroundView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            orangeBackgroundView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            orangeBackgroundView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.8)
            ].map {$0.isActive = true}
        
        let _ = [
            iBlock.leadingAnchor.constraint(equalTo: self.orangeBackgroundView.leadingAnchor),
            iBlock.bottomAnchor.constraint(equalTo: self.orangeBackgroundView.bottomAnchor, constant: -100),
            iBlock.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/6)
            ].map{$0.isActive = true}
        
        let _ = [
            tBlock.bottomAnchor.constraint(equalTo: self.orangeBackgroundView.bottomAnchor),
            tBlock.leadingAnchor.constraint(equalTo: self.iBlock.trailingAnchor),
            tBlock.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 2/6)
            ].map{$0.isActive = true}
        
        let _ = [
            jBlock.bottomAnchor.constraint(equalTo: self.orangeBackgroundView.bottomAnchor),
            jBlock.leadingAnchor.constraint(equalTo: self.tBlock.centerXAnchor),
            jBlock.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 2/6)
            ].map{$0.isActive = true}
        
        let _ = [
            zBlock.leadingAnchor.constraint(equalTo: self.jBlock.trailingAnchor),
            zBlock.bottomAnchor.constraint(equalTo: self.orangeBackgroundView.bottomAnchor),
            zBlock.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 2/6)
            ].map{$0.isActive = true}
    }
    
    func setupHorizontalFunction() {
        let _ = [
            bannerImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            bannerImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bannerImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bannerImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ].map{$0.isActive = true}
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        let _ = self.orangeBackgroundView.constraints.map { $0.isActive = false }
        let _ = self.bannerImageView.constraints.map { $0.isActive = false }
        self.view.removeConstraints(self.view.constraints)
        let currentCollection = self.traitCollection
        
        if (currentCollection.verticalSizeClass == .compact) && (newCollection.verticalSizeClass == .regular) {
            setupVerticalConstraint()
        }
        else {
            setupHorizontalFunction()
        }
        super.willTransition(to: newCollection, with: coordinator)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
