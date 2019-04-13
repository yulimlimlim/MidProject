//
//  DetailViewController.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
   
    @IBOutlet var doneProgressView: UIProgressView!
    @IBOutlet var doneImageView: UIImageView!
    @IBOutlet var doneLabel: UILabel!
    
    let beanImage = UIImage(named: "beans.png")
    let sproutImage = UIImage(named: "sprout.png")
    let treeImage = UIImage(named: "tree-2.png")
    let tree2Image = UIImage(named: "tree.png")
    let apricotImage = UIImage(named: "apricot.png")
    
    var doneRatio:Float = 0.0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.purple

        var isDoneCount :Float
        var notDoneCount :Float
        
        appDelegate.isDone = []
        appDelegate.notDone = []
        
        for i in 0...29 {
            if appDelegate.month[i].DayContent01.title != ""
            {
                switch appDelegate.month[i].DayContent01.done{
                case 0:
                   appDelegate.isDone.append(appDelegate.month[i].DayContent01)
                case 1:
                    appDelegate.notDone.append(appDelegate.month[i].DayContent01)
                default:
                    break
                }
            }
            if appDelegate.month[i].DayContent02.title != ""
            {
                switch appDelegate.month[i].DayContent02.done{
                case 0:
                    appDelegate.isDone.append(appDelegate.month[i].DayContent02)
                case 1:
                    appDelegate.notDone.append(appDelegate.month[i].DayContent02)
                default:
                    break
                }
            }
            if appDelegate.month[i].DayContent03.title != ""
            {
                switch appDelegate.month[i].DayContent03.done{
                case 0:
                    appDelegate.isDone.append(appDelegate.month[i].DayContent03)
                case 1:
                    appDelegate.notDone.append(appDelegate.month[i].DayContent03)
                default:
                    break
                }
            }
            if appDelegate.month[i].DayContent04.title != ""
            {
                switch appDelegate.month[i].DayContent04.done{
                case 0:
                    appDelegate.isDone.append(appDelegate.month[i].DayContent04)
                case 1:
                    appDelegate.notDone.append(appDelegate.month[i].DayContent04)
                default:
                    break
                }
            }
        }
        // for 문 종료
        
       
        
        isDoneCount = Float(appDelegate.isDone.count)
        notDoneCount = Float(appDelegate.notDone.count)
        if isDoneCount == 0 && notDoneCount == 0 {
            doneRatio = 0.0
        }else{
            doneRatio = isDoneCount/(isDoneCount+notDoneCount)
        }
        
        print("0:")
        print(appDelegate.isDone)
        print(appDelegate.isDone.count)
        print("1:")
        print(appDelegate.notDone)
        print(appDelegate.notDone.count)
        
        doneProgressView.progress = doneRatio
        
        
        if 0 <= doneRatio && doneRatio < 0.25 {
            doneImageView.image = beanImage
            doneLabel.text = "아직 완료한 일정이 \n 거의 없어요 ㅜ0ㅜ"
        }else if 0.25 <= doneRatio && doneRatio < 0.50 {
            doneImageView.image = sproutImage
            doneLabel.text = "조금 더 열심히 해봐요!!"
        }else if 0.50 <= doneRatio && doneRatio < 0.75 {
            doneImageView.image = treeImage
            doneLabel.text = "반 이상 완료~~ ^_^"
        }else if 0.75 <= doneRatio && doneRatio < 1.0{
            doneImageView.image = tree2Image
            doneLabel.text = "조금 더 힘내면 끝이에요!!"
        }else if doneRatio == 1.0 {
            doneImageView.image = apricotImage
            doneLabel.text = "100% 달성 완료!! >0<"
        }
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
