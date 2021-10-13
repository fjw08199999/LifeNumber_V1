//
//  ShowLifeNumberWebViewController.swift
//  LifeNumber_V1
//
//  Created by fred fu on 2021/10/2.
//

import UIKit
import WebKit


class ShowLifeNumberWebViewController: UIViewController {
    
    var birthday: Date!
    
    let lifeNumbers = ["", "開創", "協調", "創意", "務實", "自由", "關懷", "探究", "權威", "智慧"]
    
    @IBOutlet weak var lifeNumberWebKitView: WKWebView!
    
    
    func calculateLifeNumber(date: Date) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yMd"
        var numberString = dateFormatter.string(from: date)
        var sum = 0
        repeat {
            sum = 0
            for character in numberString {
                let number = Int(String(character))!
                sum = sum + number
            }
            numberString = "\(sum)"
        } while sum > 9
        return sum
    }
    
    
    func updateUI() {
        let number = calculateLifeNumber(date: birthday)
        title = "\(number) \(lifeNumbers[number])"
        
        if let url = URL(string: "https://www.ifreesite.com/numerology/a\(number).htm") {
            
            let request = URLRequest(url: url)
            
            lifeNumberWebKitView.load(request)
            
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
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
    
}
