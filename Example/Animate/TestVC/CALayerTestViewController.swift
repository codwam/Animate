//
//  CALayerTestViewController.swift
//  Animate
//
//  Created by LawLincoln on 15/6/8.
//  Copyright (c) 2015年 CocoaPods. All rights reserved.
//

import UIKit
import pop
import Animate
class CALayerTestViewController: TestTemplateViewController {
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

        self.testView.layer.spring { (make) in
            make.backgroundColor = UIColor.green
            make.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
            }
            .decay { (make) in
//                make.velocity(Double.pi * 180, forProperty: kPOPLayerRotationY)
            }
            .basic { (make) -> Void in
                make.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
                make.position = CGPoint(x: self.view.bounds.size.width/2 - 50, y: 64 + 80);
            }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Layer"
        let r = Double(30.0) * Double.pi
        let rx = Double(-30.0) * Double.pi
        let ry = Double(80.0) * Double.pi
        self.dataList = [
            "BackgroundColor":UIColor.green,
            "Bounds":NSValue(cgRect: CGRect(x: 0, y: 0, width: 200, height: 200)),
            "CornerRadius":50 as AnyObject,
            "BorderWidth":6.0 as AnyObject,
            "BorderColor":UIColor.orange,
            "Opacity":0.1 as AnyObject,
            "Position":NSValue(cgPoint:CGPoint(x: 200, y: 100)),
            "PositionX":150 as AnyObject,
            "PositionY":160 as AnyObject,
            "Rotation":r as AnyObject,
            "RotationX":rx as AnyObject,
            "RotationY":ry as AnyObject,
            "ScaleX":2.0 as AnyObject,
            "ScaleXY":NSValue( cgSize:CGSize(width: 2.0, height: 2.0)),
            "ScaleY":2.0 as AnyObject,
            "Size":NSValue(cgSize:CGSize(width: 200.0, height: 200.0)),
            "SubscaleXY":NSValue(cgSize:CGSize(width: 5.0, height: 5.0)),
            "SubtranslationX":120 as AnyObject,
            "SubtranslationXY":NSValue(cgSize:CGSize(width: 120.0, height: 100.0)),
            "SubtranslationY":100 as AnyObject,
            "SubtranslationZ":90 as AnyObject,
            "TranslationX":80 as AnyObject,
            "TranslationXY":NSValue(cgSize:CGSize(width: 70, height: 90)),
            "TranslationY":100 as AnyObject,
            "TranslationZ":120 as AnyObject,
            "ZPosition":300 as AnyObject,
            "ShadowColor":UIColor.cyan,
            "ShadowOffset":NSValue(cgSize:CGSize(width: 20, height: 10)),
            "ShadowOpacity":0.7 as AnyObject,
            "ShadowRadius":40 as AnyObject
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
        let animator = currentStyle == 0 ? self.testView.layer.spring : (currentStyle == 1 ? self.testView.layer.decay : self.testView.layer.basic)
        
        self.testView.layer.spring.springBounciness = 20
        self.testView.layer.spring.springSpeed = 20
        
        self.testView.layer.basic.timingFunction = CAMediaTimingFunction.easeIn()
        
        var value: AnyObject! = Array(dataList.values)[currentProperty]
        let key = Array(dataList.keys)[currentProperty]
        if currentStyle == 1 && key == "Alpha" {
            value = -1.8 as AnyObject
        }
        animator.setValue(value, forKeyPath: "Animate"+key)
    }

}
extension CALayerTestViewController {
    
    override func changeSegment(_ sender: UISegmentedControl) {
        currentStyle = sender.selectedSegmentIndex
    }
    
    override func changeProperty(_ row: Int) {
        currentProperty = row
    }
}
