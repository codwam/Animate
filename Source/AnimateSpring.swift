//
//  AnimateSpring.swift
//  Pods
//
//  Created by LawLincoln on 15/6/24.
//
//

import Foundation
import pop
// MARK: - Spring
open class AnimateSpring: BasicProperties{
    // MARK: - Spring
    /**
    @abstract The current velocity value.
    @discussion Set before animation start to account for initial velocity. Expressed in change of value units per second.
    */
    open var velocity: AnyObject!
    /**
    @abstract The effective bounciness.
    @discussion Use in conjunction with 'springSpeed' to change animation effect. Values are converted into corresponding dynamics constants. Higher values increase spring movement range resulting in more oscillations and springiness. Defined as a value in the range [0, 20]. Defaults to 4.
    */
    open var springBounciness: CGFloat!
    
    /**
    @abstract The effective speed.
    @discussion Use in conjunction with 'springBounciness' to change animation effect. Values are converted into corresponding dynamics constants. Higher values increase the dampening power of the spring resulting in a faster initial velocity and more rapid bounce slowdown. Defined as a value in the range [0, 20]. Defaults to 12.
    */
    open var springSpeed: CGFloat!
    
    /**
    @abstract The tension used in the dynamics simulation.
    @discussion Can be used over bounciness and speed for finer grain tweaking of animation effect.
    */
    open var dynamicsTension: CGFloat!
    
    /**
    @abstract The friction used in the dynamics simulation.
    @discussion Can be used over bounciness and speed for finer grain tweaking of animation effect.
    */
    open var dynamicsFriction: CGFloat!
    
    /**
    @abstract The mass used in the dynamics simulation.
    @discussion Can be used over bounciness and speed for finer grain tweaking of animation effect.
    */
    open var dynamicsMass: CGFloat!
    
    public override init() {
        super.init()
        self.type = .spring
        weak var wself: AnimateSpring! = self
        applyToBlock = {
            view in
            wself.applyTo(view)
        }
    }
    
    deinit{
//        debugPrint("deinit Spring", appendNewline: true)
    }
}

extension AnimateSpring {
    public func applyTo(_ target: AnyObject) {
        if animates.count == 0 {
            self.playNext()
            return
        }
        self.target = target as! NSObject
        animating = true
        for an in animates {
            if let anim = an as? POPSpringAnimation {
                if !springBounciness {
                    anim.springBounciness = springBounciness!
                }
                if !springSpeed {
                    anim.springSpeed = springSpeed!
                }
                if !dynamicsTension {
                    anim.dynamicsTension = dynamicsTension!
                }
                if !dynamicsFriction {
                    anim.dynamicsFriction = dynamicsFriction!
                }
                if !dynamicsMass {
                    anim.dynamicsMass = dynamicsMass!
                }
                if !velocity {
                    anim.velocity = velocity!
                }
                anim.delegate = self
                target.pop_add(anim, forKey: anim.property.name)
            }
        }
    }
    
    
}


