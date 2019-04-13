//
//  CalendarViewController.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet var day01: UIButton!
    @IBOutlet var day02: UIButton!
    @IBOutlet var day03: UIButton!
    @IBOutlet var day04: UIButton!
    @IBOutlet var day05: UIButton!
    @IBOutlet var day06: UIButton!
    @IBOutlet var day07: UIButton!
    @IBOutlet var day08: UIButton!
    @IBOutlet var day09: UIButton!
    @IBOutlet var day10: UIButton!
    @IBOutlet var day11: UIButton!
    @IBOutlet var day12: UIButton!
    @IBOutlet var day13: UIButton!
    @IBOutlet var day14: UIButton!
    @IBOutlet var day15: UIButton!
    @IBOutlet var day16: UIButton!
    @IBOutlet var day17: UIButton!
    @IBOutlet var day18: UIButton!
    @IBOutlet var day19: UIButton!
    @IBOutlet var day20: UIButton!
    @IBOutlet var day21: UIButton!
    @IBOutlet var day22: UIButton!
    @IBOutlet var day23: UIButton!
    @IBOutlet var day24: UIButton!
    @IBOutlet var day25: UIButton!
    @IBOutlet var day26: UIButton!
    @IBOutlet var day27: UIButton!
    @IBOutlet var day28: UIButton!
    @IBOutlet var day29: UIButton!
    @IBOutlet var day30: UIButton!
    

    var dayIndex :Int?
    
// 1일~ 30일 중 무엇을 클릭했는지 저장하는 함수 + 클릭 시 버튼 백그라운드 색 변경
    @IBAction func dayClickAction(_ sender: UIButton) {
        day01.backgroundColor = UIColor.clear
        day02.backgroundColor = UIColor.clear
        day03.backgroundColor = UIColor.clear
        day04.backgroundColor = UIColor.clear
        day05.backgroundColor = UIColor.clear
        day06.backgroundColor = UIColor.clear
        day07.backgroundColor = UIColor.clear
        day08.backgroundColor = UIColor.clear
        day09.backgroundColor = UIColor.clear
        day10.backgroundColor = UIColor.clear
        day11.backgroundColor = UIColor.clear
        day12.backgroundColor = UIColor.clear
        day13.backgroundColor = UIColor.clear
        day14.backgroundColor = UIColor.clear
        day15.backgroundColor = UIColor.clear
        day16.backgroundColor = UIColor.clear
        day17.backgroundColor = UIColor.clear
        day18.backgroundColor = UIColor.clear
        day19.backgroundColor = UIColor.clear
        day20.backgroundColor = UIColor.clear
        day21.backgroundColor = UIColor.clear
        day22.backgroundColor = UIColor.clear
        day23.backgroundColor = UIColor.clear
        day24.backgroundColor = UIColor.clear
        day25.backgroundColor = UIColor.clear
        day26.backgroundColor = UIColor.clear
        day27.backgroundColor = UIColor.clear
        day28.backgroundColor = UIColor.clear
        day29.backgroundColor = UIColor.clear
        day30.backgroundColor = UIColor.clear
    
        sender.backgroundColor = UIColor.lightGray
        
        dayIndex = Int((sender.titleLabel?.text)!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalenderTextView" {
            let destVC = segue.destination as! CalendarTextViewController
            destVC.dayIndexInfo = dayIndex
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
