//
//  ViewController.swift
//  GachaTech
//
//  Created by user on 2022/05/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil)
    }


}

