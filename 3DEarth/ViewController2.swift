//
//  ViewController2.swift
//  3DEarth
//
//  Created by AB on 6/18/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBAction func goBack(_ sender: Any) {
        performSegue(withIdentifier: "goBack", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goBigOrb(_ sender: Any) {
        performSegue(withIdentifier: "goBig", sender: self)

    }
    @IBAction func goNext(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: self)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
