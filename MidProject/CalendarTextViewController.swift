//
//  CalendarTextViewController.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

class CalendarTextViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var dayIndexInfo :Int?
    
    @IBOutlet var num01View: UIView!
    @IBOutlet var num01Title: UILabel!
    @IBOutlet var num01Content: UILabel!
    @IBOutlet var num01Seg: UISegmentedControl!
    
    
    @IBOutlet var num02View: UIView!
    @IBOutlet var num02Title: UILabel!
    @IBOutlet var num02Content: UILabel!
    @IBOutlet var num02Seg: UISegmentedControl!
    
    @IBOutlet var num03View: UIView!
    @IBOutlet var num03Title: UILabel!
    @IBOutlet var num03Content: UILabel!
    @IBOutlet var num03Seg: UISegmentedControl!
    
    @IBOutlet var num04View: UIView!
    @IBOutlet var num04Title: UILabel!
    @IBOutlet var num04Content: UILabel!
    @IBOutlet var num04Seg: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.tintColor = UIColor.purple
        if let dayInfo = dayIndexInfo {
            if appDelegate.month[dayInfo-1].DayContent01.title == ""{
                self.num01View.isHidden = true
            }else{
                self.num01View.isHidden = false
                num01Title.text = appDelegate.month[dayInfo-1].DayContent01.title
                num01Content.text = appDelegate.month[dayInfo-1].DayContent01.Content
                num01Seg.selectedSegmentIndex = appDelegate.month[dayInfo-1].DayContent01.done
            }
            
            if appDelegate.month[dayInfo-1].DayContent02.title == ""{
                self.num02View.isHidden = true
            }else{
                self.num02View.isHidden = false
                num02Title.text = appDelegate.month[dayInfo-1].DayContent02.title
                num02Content.text = appDelegate.month[dayInfo-1].DayContent02.Content
                num02Seg.selectedSegmentIndex = appDelegate.month[dayInfo-1].DayContent02.done
            }
            
            if appDelegate.month[dayInfo-1].DayContent03.title == ""{
                self.num03View.isHidden = true
            }else{
                self.num03View.isHidden = false
                num03Title.text = appDelegate.month[dayInfo-1].DayContent03.title
                num03Content.text = appDelegate.month[dayInfo-1].DayContent03.Content
                num03Seg.selectedSegmentIndex = appDelegate.month[dayInfo-1].DayContent03.done
            }
            
            if appDelegate.month[dayInfo-1].DayContent04.title == ""{
                self.num04View.isHidden = true
            }else{
                self.num04View.isHidden = false
                num04Title.text = appDelegate.month[dayInfo-1].DayContent04.title
                num04Content.text = appDelegate.month[dayInfo-1].DayContent04.Content
                num04Seg.selectedSegmentIndex = appDelegate.month[dayInfo-1].DayContent04.done
            }
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSegmented(_ sender: UISegmentedControl) {
        
            if let dayInfo = dayIndexInfo {
                if sender == num01Seg {
                    appDelegate.month[dayInfo-1].DayContent01.done = sender.selectedSegmentIndex
                }
                if sender == num02Seg {
                    appDelegate.month[dayInfo-1].DayContent02.done = sender.selectedSegmentIndex
                }
                if sender == num03Seg {
                    appDelegate.month[dayInfo-1].DayContent03.done = sender.selectedSegmentIndex
                }
                if sender == num04Seg {
                    appDelegate.month[dayInfo-1].DayContent04.done = sender.selectedSegmentIndex
                }
            }
        
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
