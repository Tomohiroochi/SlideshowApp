//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Tomohiro Ochi on 2021/03/07.
//

import UIKit

class ViewController:UIViewController {
    
    @IBOutlet weak var 進むbutton: UIButton!
    @IBOutlet weak var 戻るbutton: UIButton!
    @IBOutlet weak var 再生button: UIButton!
    @IBOutlet weak var pictureImageview: UIImageView!
    
    let imageName = ["image1.jpg","image2.jpg","image3.jpg"]
    var changeImgNo = 0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pictureImageview.image = UIImage(named:"image1.jpg")
    }

    @IBAction func 進むbutton(_ sender: Any) {
        if changeImgNo == 0 {
            changeImgNo = 1
        } else if changeImgNo == 1 {
            changeImgNo = 2
        } else if changeImgNo == 2 {
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        pictureImageview.image = UIImage(named: name)
        }
        
    @IBAction func 戻るbutton(_ sender: Any) {
        if changeImgNo == 0 {
            changeImgNo = 2
        } else if changeImgNo == 2 {
            changeImgNo = 1
        } else if changeImgNo == 1 {
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        pictureImageview.image = UIImage(named: name)
    }
    
    @IBAction func 再生button(_ sender: Any) {
        if (timer == nil) {
            timer = Timer.scheduledTimer(
                timeInterval: 2.0,
                target: self,
                selector: #selector(ViewController.updateTimer),
                userInfo: nil,
                repeats: true)
            再生button.setTitle("停止", for: .normal)
            進むbutton.isEnabled = false
            戻るbutton.isEnabled = false
            
        
        } else {
            timer.invalidate()
            timer = nil
            再生button.setTitle("再生", for: .normal)
            進むbutton.isEnabled = true
            戻るbutton.isEnabled = true
            
        }
        
    }
    
    @objc func updateTimer() {
        if (changeImgNo == 0){
            changeImgNo = 1
        }
        else if (changeImgNo == 1){
            changeImgNo = 2
        }
        else if (changeImgNo == 2){
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        pictureImageview.image = UIImage(named: name)
    }
    
    
    @IBAction func tapAction(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let outputViewController:OutputViewController = segue.destination as! OutputViewController
        outputViewController.changeImgNo = changeImgNo
        
        if (timer == nil) {
            timer = nil
            
        
        } else {
            timer.invalidate()
            timer = nil
            再生button.setTitle("再生", for: .normal)
        }
        
        }
    
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
       
            
        }
        
        
        
    }
    
        

