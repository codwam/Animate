//
//  AnimateBasic.swift
//  Pods
//
//  Created by LawLincoln on 15/6/24.
//
//

import Foundation
import pop

open class AnimateBasic: BasicProperties{
    /**
    @abstract The duration in seconds. Defaults to 0.4.
    */
    open var duration: CFTimeInterval!
    
    /**
    @abstract A timing function defining the pacing of the animation. Defaults to nil indicating pacing according to kCAMediaTimingFunctionDefault.
    */
    open var timingFunction: CAMediaTimingFunction!
    
    
    public override init() {
        super.init()
        self.type = .basic
        weak var wself: AnimateBasic! = self
        applyToBlock = {
            view in
            wself.applyTo(view)
        }
    }
    
    deinit{
//        debugPrint("deinit Basic", appendNewline: true)
    }
    
    
}

extension AnimateBasic {

    // MARK:  ViewAnimateApplyProtocol
    /**
    Apply animate to view
    
    - parameter view: to animate
    */
    public func applyTo(_ view:AnyObject){
        
        if animates.count == 0 {
            self.playNext()
            return
        }
        self.target = view as! NSObject
        for an in animates {
            if let basicAnim = an as? POPBasicAnimation {
                if !duration {
                    basicAnim.duration = duration!
                }
                if !timingFunction {
                    basicAnim.timingFunction = timingFunction!
                }
                basicAnim.delegate = self
                view.pop_add(basicAnim, forKey: basicAnim.property.name)
            }
        }
    }
    
}
