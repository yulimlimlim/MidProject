//
//  AddPlanViewController.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

class AddPlanViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var monthDayNumPickerView: UIPickerView!
    
    let dayArray: Array<String> = ["1일","2일","3일","4일","5일","6일","7일","8일","9일","10일","11일","12일","13일","14일","15일","16일","17일","18일","19일","20일","21일","22일","23일","24일","25일","26일","27일","28일","29일","30일"]
    
    let numArray: [String] = ["1번","2번","3번","4번"]
    
    @IBAction func getValue(_ sender: UIButton) {
                
    }// 필요한가..?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddPlanTextView" {
            let destVC = segue.destination as! AddPlanTextViewController
            
            let day:String = dayArray[self.monthDayNumPickerView.selectedRow(inComponent: 0)]
            let dayInt:Int = self.monthDayNumPickerView.selectedRow(inComponent: 0)
        
            let num:String = numArray[self.monthDayNumPickerView.selectedRow(inComponent: 1)]
            let numInt:Int = self.monthDayNumPickerView.selectedRow(inComponent: 1)
            
            destVC.title = "4월 " + day
            destVC.dayInfo = day
            destVC.dayIndex = dayInt + 1    // 원래 날짜 대로 ex. Index:0 -> day:1
            destVC.numInfo = num
            destVC.numIndex = numInt + 1    // 원래 순서 대로 ex. Index:0 -> num:1
            
            
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return dayArray.count
        }
        else{
            return numArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return dayArray[row]
        }
        else{
            return numArray[row]
        }
    }
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.tintColor = UIColor.purple
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

}
