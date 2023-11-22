//
//  PodExample1.swift
//  PodExample1
//
//  Created by Hugo Eliel Bucio Martinez on 21/11/23.
//

import Foundation
import UIKit

enum brand {
    case Liverpool
    case Suburbia
}

public class PodExample1 : UIView{
    
   
    
    let selectedBrand: brand = .Suburbia
    var cornerRadius : CGFloat = 5.0
    var bgColor : UIColor = UIColor.white
    
    override init(frame: CGRect) {
      super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    public func setupView() {
    
        switch selectedBrand {
            
        case .Liverpool:
            
            self.cornerRadius = 10.0
            self.bgColor = UIColor.systemPink
            
        case .Suburbia:
            
            self.cornerRadius = 20.0
            self.bgColor = UIColor.purple
            
        }
        
        applyAttributes()
    }
    
    private func applyAttributes(){
        layer.cornerRadius = self.cornerRadius
        layer.masksToBounds = true
        backgroundColor = bgColor
    }
}


