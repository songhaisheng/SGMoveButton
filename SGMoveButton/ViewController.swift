//
//  ViewController.swift
//  SGMoveButton
//
//  Created by SG on 16/11/11.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate lazy var moveButton: SGMoveButton = {
        let button: SGMoveButton = SGMoveButton(frame: CGRect(x: 60.0, y: 60.0, width: 60.0, height: 60.0))
        button.layer.cornerRadius = 30.0
        button.backgroundColor = UIColor.red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(moveButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

