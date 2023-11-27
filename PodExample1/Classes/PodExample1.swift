//
//  PodExample1.swift
//  PodExample1
//
//  Created by Hugo Eliel Bucio Martinez on 21/11/23.
// No inicializar en setupView

import Foundation
import UIKit

public class PodExample1Configuration {

    public static var currentBrand: PodExample1.BrandType?
    
}

public class PodExample1 : UIView{
    
    public enum BrandType {
        case Liverpool
        case Suburbia
    }
    
    
    //var selectedBrand: brand = .Liverpool
    var cornerRadius : CGFloat = 5.0
    var bgColor : UIColor = UIColor.white
    
    
    
    override init(frame: CGRect) {
      super.init(frame: frame)
        
    }

    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
    public func setupView() {
    
        //print(self.brand)
        switch PodExample1Configuration.currentBrand {
            
        case .Liverpool:
            
            self.cornerRadius = 10.0
            self.bgColor = UIColor.systemPink
            
        case .Suburbia:
            
            self.cornerRadius = 20.0
            self.bgColor = UIColor.purple
            
        case .none:
            self.cornerRadius = 20.0
            self.bgColor = UIColor.black
        }
        
        
        applyAttributes()
    }
    
   
    
    private func applyAttributes(){
        layer.cornerRadius = self.cornerRadius
        layer.masksToBounds = true
        backgroundColor = bgColor
    }
}


