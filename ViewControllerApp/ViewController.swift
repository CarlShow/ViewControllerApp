//
//  ViewController.swift
//  ViewControllerApp
//
//  Created by CARL SHOW on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1: UIButton!
    @IBOutlet weak var p2: UIButton!
    @IBOutlet weak var p3: UIButton!
    @IBOutlet weak var initalLabel: UILabel!
    var inc : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        p1.layer.cornerRadius = 20
        p2.layer.cornerRadius = 20
        p3.layer.cornerRadius = 20
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    @IBAction func onTap(_ sender: Any)
    {
        navigationController?.isNavigationBarHidden = false
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue)
    {
        let seggy = seg.source as! AltController
        if seggy.field.text == ""
        {
            initalLabel.text = "Welcome back!"
        }
        else
        {
            initalLabel.text = seggy.field.text
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if inc != nil
        {
            let seggo = segue.destination as! AltController
            seggo.inco = true
        }
    }
}

