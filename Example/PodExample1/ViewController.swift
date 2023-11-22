//
//  ViewController.swift
//  PodExample1
//
//  Created by hebuciom on 11/20/2023.
//  Copyright (c) 2023 hebuciom. All rights reserved.
// Hacer un enum dentro del pod, donde uno sea .suburbia y otro .liverpool, si es suburbia, parametro de tipo type.

import UIKit
import PodExample1

class ViewController: UIViewController {

  
    @IBOutlet weak var exampleView: PodExample1!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleView.setupView()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

