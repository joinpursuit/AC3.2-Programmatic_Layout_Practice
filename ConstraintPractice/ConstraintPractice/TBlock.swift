//
//  TBlock.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/25/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation
import UIKit

class TBlock: UIView {
    var color = UIColor.blue
    let block1 = Block()
    let block2 = Block()
    let block3 = Block()
    let block4 = Block()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.accessibilityIdentifier = "TBlock Class"
        block1.accessibilityIdentifier = "BLOCK1"
        block2.accessibilityIdentifier = "BLOCK2"
        block3.accessibilityIdentifier = "BLOCK3"
        block4.accessibilityIdentifier = "BLOCK4"
        self.backgroundColor = UIColor.clear
        self.translatesAutoresizingMaskIntoConstraints = false
        let _ = [block1,block2,block3,block4].map{$0.translatesAutoresizingMaskIntoConstraints = false}
        self.addSubview(block1)
        self.addSubview(block2)
        self.addSubview(block3)
        self.addSubview(block4)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupConstraints() {
        block1.coloredView.backgroundColor = self.color
        block2.coloredView.backgroundColor = self.color
        block3.coloredView.backgroundColor = self.color
        block4.coloredView.backgroundColor = self.color
        let _ = [
            block1.topAnchor.constraint(equalTo: self.topAnchor),
            block1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            block1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5)
            ].map{$0.isActive = true}
        let _ = [
            block2.topAnchor.constraint(equalTo: self.block1.bottomAnchor),
            block2.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            block2.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5)
            ].map{$0.isActive = true}
        let _ = [
            block3.topAnchor.constraint(equalTo: self.block2.bottomAnchor),
            block3.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            block3.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            block3.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ].map{$0.isActive = true}
        let _ = [
            block4.centerYAnchor.constraint(equalTo: block2.centerYAnchor),
            block4.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            block4.leadingAnchor.constraint(equalTo: block2.trailingAnchor),
            block4.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            ].map{$0.isActive = true}
    }
    
}
