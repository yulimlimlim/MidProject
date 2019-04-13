//
//  AddPlanTextViewController.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

class AddPlanTextViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var dayNumInfoLabel: UILabel!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var contentTextField: UITextField!
    
   
    
    var dayInfo: String?
    var dayIndex: Int?
    var numInfo: String?
    var numIndex: Int?
    var dayNumInfo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dayNumInfo = "4월 " + dayInfo! + " " + numInfo!
        //왜 !
        
        // Do any additional setup after loading the view.
        if let dayNumString = dayNumInfo{
            dayNumInfoLabel.text = dayNumString
        }
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // 이해 말고 외우기?
    
    // 추가 버튼을 누르면 실행되는 엑션
    @IBAction func modalDismiss(_ sender: Any) {
        let title = titleTextField.text!
        let content = contentTextField.text!
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if let dayInfo = dayIndex  {
            //  날짜 -> 해당하는 인덱스로 변경
            let day:Int = dayInfo - 1  // 원래 날짜 -> index 순으로
        
            // 1, 2, 3, 4 번 중 어떤 곳에 추가할 지
            switch numIndex{
            case 1:
                appDelegate.month[day] = AppDelegate.Day(DayContent01: (title, content, 1), DayContent02: (appDelegate.month[day].DayContent02.title, appDelegate.month[day].DayContent02.Content, appDelegate.month[day].DayContent02.done), DayContent03: (appDelegate.month[day].DayContent03.title, appDelegate.month[day].DayContent03.Content, appDelegate.month[day].DayContent03.done), DayContent04: (appDelegate.month[day].DayContent04.title, appDelegate.month[day].DayContent04.Content, appDelegate.month[day].DayContent04.done))
            case 2:
                appDelegate.month[day] = AppDelegate.Day(DayContent01: (appDelegate.month[day].DayContent01.title, appDelegate.month[day].DayContent01.Content, appDelegate.month[day].DayContent01.done), DayContent02: (title, content, 1), DayContent03: (appDelegate.month[day].DayContent03.title, appDelegate.month[day].DayContent03.Content, appDelegate.month[day].DayContent03.done), DayContent04: (appDelegate.month[day].DayContent04.title, appDelegate.month[day].DayContent04.Content, appDelegate.month[day].DayContent04.done))
            case 3:
                appDelegate.month[day] = AppDelegate.Day(DayContent01: (appDelegate.month[day].DayContent01.title, appDelegate.month[day].DayContent01.Content, appDelegate.month[day].DayContent01.done), DayContent02: (appDelegate.month[day].DayContent02.title, appDelegate.month[day].DayContent02.Content, appDelegate.month[day].DayContent02.done), DayContent03: (title, content, 1), DayContent04: (appDelegate.month[day].DayContent04.title, appDelegate.month[day].DayContent04.Content, appDelegate.month[day].DayContent04.done))
            case 4:
                appDelegate.month[day] = AppDelegate.Day(DayContent01: (appDelegate.month[day].DayContent01.title, appDelegate.month[day].DayContent01.Content, appDelegate.month[day].DayContent01.done), DayContent02: (appDelegate.month[day].DayContent02.title, appDelegate.month[day].DayContent02.Content, appDelegate.month[day].DayContent02.done), DayContent03: (appDelegate.month[day].DayContent03.title, appDelegate.month[day].DayContent03.Content, appDelegate.month[day].DayContent03.done), DayContent04: (title, content, 1))
            default: break
            }
        }
        self.dismiss(animated: true, completion: nil)
        // 모달 사라지게 !!!!!
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
