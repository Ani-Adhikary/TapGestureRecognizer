//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Ani Adhikary on 02/02/18.
//  Copyright © 2018 Ani Adhikary. All rights reserved.
//  Followed this tutorial
//  https://www.hackingwithswift.com/example-code/uikit/how-to-detect-a-double-tap-gesture

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var singleTapView: UIView!    
    @IBOutlet weak var doubleTapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Step1
        let singleTapGesture = UITapGestureRecognizer(target: self, action: #selector(singleTapped))
        singleTapView.addGestureRecognizer(singleTapGesture)
        
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        doubleTapGesture.numberOfTapsRequired = 2
        doubleTapView.addGestureRecognizer(doubleTapGesture)
    }
    
    //Step2
    @objc func singleTapped() {
        singleTapView.backgroundColor = .red
    }
    
    @objc func doubleTapped() {
        doubleTapView.backgroundColor = .green
    }
    
}

