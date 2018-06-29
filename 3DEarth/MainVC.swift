//
//  MainVC.swift
//  3DEarth
//
//  Created by AB on 6/22/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func moreTapped(_ sender: Any) {
        print("toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),object: nil)
    }
    
    

}
