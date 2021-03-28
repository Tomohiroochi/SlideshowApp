//
//  OutputViewController.swift
//  SlideshowApp
//
//  Created by Tomohiro Ochi on 2021/03/22.
//

import UIKit

class OutputViewController: UIViewController {

    
    @IBOutlet weak var outputView: UIImageView!
    let imageName = ["image1.jpg","image2.jpg","image3.jpg"]
    var changeImgNo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let name = imageName[changeImgNo]
        outputView.image = UIImage(named: name)
      
       
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
