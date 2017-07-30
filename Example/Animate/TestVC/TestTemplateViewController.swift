//
//  TestTemplateViewController.swift
//  Animate
//
//  Created by LawLincoln on 15/6/8.
//  Copyright (c) 2015年 CocoaPods. All rights reserved.
//

import UIKit
import Animate
class TestTemplateViewController: UIViewController {
    
    lazy var testView: UIView! = {
        var size = self.view.frame.size
        let atestView = UIButton(frame: CGRect(x: size.width/2-50, y: 64 + 80, width: 100, height: 100))
        atestView.tintColor = UIColor.red
        atestView.setTitle("Halo", for: UIControlState())
        atestView.layer.borderColor = UIColor.purple.cgColor
        atestView.layer.borderWidth = 4.0
        atestView.layer.cornerRadius = 8
        atestView.layer.shadowColor = UIColor.white.cgColor
        atestView.layer.shadowOffset = CGSize(width: 2, height: 2)
        atestView.layer.shadowOpacity = 0.3
        
        atestView.backgroundColor = UIColor.orange
        return atestView
        }()
    
    lazy var segmentControl: UISegmentedControl! = {
        let seg = UISegmentedControl(items: ["Spring","Decay","Basic"])
        seg.addTarget(self, action: #selector(TestTemplateViewController.changeSegment(_:)), for: UIControlEvents.valueChanged)
        seg.tintColor = UIColor.white
        seg.frame = CGRect(x: 0, y: self.view.frame.height-216-44, width: self.view.frame.width, height: 44)
        seg.selectedSegmentIndex = 0
        return seg
    }()
    lazy var picker: UIPickerView! = {
        let p = UIPickerView(frame: CGRect(x: 0, y: self.view.frame.height-216, width: self.view.frame.width, height: 216))
        p.delegate = self
        p.dataSource = self
        return p
    }()
    lazy var dataList: [String:AnyObject]! = {
        let value = [String:AnyObject]()
        return value
    }()
    
    lazy var velocityList: [String:AnyObject]! = {
        let value = [String:AnyObject]()
        return value
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.view.addSubview(self.segmentControl)
        self.view.addSubview(self.picker)
        self.view.addSubview(self.testView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}

extension TestTemplateViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.dataList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(dataList.keys)[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.changeProperty(row)
    }
}

extension TestTemplateViewController {
    func changeSegment(_ sender:UISegmentedControl){
        
    }
    
    func changeProperty(_ row:Int){
        
    }
}
