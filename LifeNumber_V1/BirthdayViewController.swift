//
//  BirthdayViewController.swift
//  LifeNumber_V1
//
//  Created by fred fu on 2021/10/2.
//

import UIKit

class BirthdayViewController: UIViewController {
    

    @IBOutlet weak var birthdayUIPickViewOutlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBSegueAction func sendLifeNumberButtonIBSegueAction(_ coder: NSCoder) -> ShowLifeNumberWebViewController? {
        
        let controller = ShowLifeNumberWebViewController(coder: coder)
        
        controller?.birthday = birthdayUIPickViewOutlet.date
        
        return controller
    }

}
    
