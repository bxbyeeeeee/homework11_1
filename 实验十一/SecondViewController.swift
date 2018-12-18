//
//  SecondViewController.swift
//  实验十一
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""
    var no = ""
    
    var delegate: StudentProtocol?
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text = no
        tfName.text = name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        no = tfNo.text!
        name = tfName.text!
        
        delegate?.change(name: name, no: no)
        
//        for vc in self.navigationController!.viewControllers{
//            if let firstVC = vc as? FirstViewController{
//                firstVC.no = no
//                firstVC.name = name
//            }
//        }
        
        navigationController?.popViewController(animated: true)
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
