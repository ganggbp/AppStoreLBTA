//
//  VerticalStackView.swift
//  AppStoreLBTA
//
//  Created by Burit Boonkorn on 1/8/2566 BE.
//

import UIKit

class VerticalStackView: UIStackView {
    
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach { addArrangedSubview($0) }
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
