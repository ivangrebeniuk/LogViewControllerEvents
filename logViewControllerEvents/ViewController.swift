//
//  ViewController.swift
//  logViewControllerEvents
//
//  Created by Иван Гребенюк on 20.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Application moved from 'viewDidLoad' to 'viewWillAppear' state into", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Application moved from 'viewWillAppear' to 'viewDidAppear' state into", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Application moved from 'viewDidAppear' to 'viewWillDisappear' state into", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Application moved from 'viewWillDisappear' to 'viewDidDisappear' state into", #function)
    }


}

