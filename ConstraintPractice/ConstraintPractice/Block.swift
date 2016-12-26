//
//  Block.swift
//  ConstraintPractice
//
//  Created by Ana Ma on 12/25/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation
import UIKit

class Block: UIView {
    lazy var coloredView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.coloredView.accessibilityIdentifier = "Inner Colored View"
        self.accessibilityIdentifier = "BlockClass"
        self.backgroundColor = UIColor.gray
        self.translatesAutoresizingMaskIntoConstraints = false
        self.coloredView.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.heightAnchor.constraint(equalTo: self.widthAnchor)
            ].map{$0.isActive = true}
        self.addSubview(coloredView)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupConstraints() {
        let _ = [
            coloredView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4.0),
            coloredView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4.0),
            coloredView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4.0),
            coloredView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4.0),
            ].map{$0.isActive = true}
    }
}
