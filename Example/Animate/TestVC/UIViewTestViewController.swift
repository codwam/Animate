//
//  UIViewTestViewController.swift
//  Animate
//
//  Created by LawLincoln on 15/6/8.
//  Copyright (c) 2015年 CocoaPods. All rights reserved.
//

import UIKit
import pop
import Animate
class UIViewTestViewController: TestTemplateViewController {

    fileprivate var currentProperty: Int = 0 {
        didSet{
            animateCombine()
        }
    }
    fileprivate var currentStyle: Int = 0 {
        didSet{
            animateCombine()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.testView
                .spring { (make) -> Void in
                    make.springBounciness = 20
                    make.springSpeed = 20
                    make.frame = CGRectMake(120, 150, 200, 400)
            }.delay(0.5).decay { (make) -> Void in
                make.velocity(UIColor.greenColor(), forProperty: kPOPViewBackgroundColor)
            }.delay(0.5).basic { (make) -> Void in
                make.frame = CGRect(x: self.view.bounds.size.width/2 - 50, y: 64 + 80, width: 100, height: 100)
            }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "View"
        self.dataList = [
            "Alpha":0.1 as AnyObject,
            "BackgroundColor":UIColor.green,
            "Bounds":NSValue(cgRect: CGRect(x: 0, y: 0, width: 200, height: 200)),
            "Center":NSValue(cgPoint: CGPoint(x: 60, y: 120)),
            "Frame":NSValue(cgRect: CGRect(x: 60, y: 100, width: 80, height: 200)),
            "ScaleX":1.2 as AnyObject,
            "ScaleXY":NSValue(cgSize:CGSize(width: 0.5, height: 1.5)),
            "ScaleY":1.7 as AnyObject,
            "Size":NSValue(cgSize:CGSize(width: 80, height: 80)),
            "TintColor":UIColor.red]
        self.velocityList = [
            "Alpha":-1.8 as AnyObject,
            "BackgroundColor":UIColor.yellow,
            "Bounds":NSValue(cgRect: CGRect(x: 0, y: 0, width: 500, height: 200)),
            "Center":NSValue(cgPoint: CGPoint(x: 100, y: 120)),
            "Frame":NSValue(cgRect: CGRect(x: 20, y: 200, width: 10, height: 200)),
            "ScaleX":1.2 as AnyObject,
            "ScaleXY":NSValue(cgSize:CGSize(width: 1.5, height: 2.5)),
            "ScaleY":1.7 as AnyObject,
            "Size":NSValue(cgSize:CGSize(width: 100, height: 80)),
            "TintColor":UIColor.cyan
        ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func animateCombine(){
        UIView.animate(withDuration: 0.2, animations: { () -> Void in
            self.testView.alpha = 0
        }, completion: { (b) -> Void in
            if b {
                self.testView.removeFromSuperview()
                self.testView = nil
                self.view.addSubview(self.testView)
                self.Animate()
            }
        }) 
    }
    
    func Animate(){
        let animator = currentStyle == 0 ? self.testView.spring : (currentStyle == 1 ? self.testView.decay : self.testView.basic)
        
        let v: AnyObject = Array(velocityList.values)[currentProperty]
        
        self.testView.spring.springBounciness = 20
        self.testView.spring.springSpeed = 20
        self.testView.spring.velocity = v
        
        self.testView.basic.timingFunction = CAMediaTimingFunction.easeIn()
        
        self.testView.decay.velocity = v
        let value: AnyObject! = Array(dataList.values)[currentProperty]
        let key = Array(dataList.keys)[currentProperty]
        
        animator.setValue(value, forKeyPath: "Animate"+key)
    }
}
extension UIViewTestViewController {
    
    override func changeSegment(_ sender: UISegmentedControl) {
        currentStyle = sender.selectedSegmentIndex
    }
    
    override func changeProperty(_ row: Int) {
        currentProperty = row
    }
}
