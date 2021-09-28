//
//  AltController.swift
//  ViewControllerApp
//
//  Created by CARL SHOW on 9/24/21.
//

import UIKit

class AltController: UIViewController {
    @IBOutlet weak var unButton: UIButton!
    @IBOutlet weak var field: UITextField!
    var inco = false
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        if inco == true
        {
            field.isHidden = true
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    @IBAction func segFrom3(_ sender: Any)
    {
        performSegue(withIdentifier: "ToSecret", sender: nil)
    }
}
