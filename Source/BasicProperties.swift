//
//  BasicProperties.swift
//  Pods
//
//  Created by LawLincoln on 15/6/24.
//
//
import Foundation
import pop

open class BasicProperties: NSObject {
    // MARK: - UIView
    open var alpha: CGFloat!{
        didSet {
            if let value = alpha {
                let anim = animator(kPOPViewAlpha)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
   
    open var center: CGPoint!{
        didSet {
            if let value = center {
                let anim = animator(kPOPViewCenter)
                anim.toGenericValue(NSValue(cgPoint:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var frame: CGRect! {
        didSet{
            if let value = frame {
                let anim = animator(kPOPViewFrame)
                anim.toGenericValue(NSValue(cgRect:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var tintColor: UIColor!{
        didSet {
            if let value = tintColor {
                if self.type != .decay {
                    let anim = animator(kPOPViewTintColor)
                    anim.toValue = value
                    addAnimate(anim)
                }
            }
        }
    }
    // MARK: - Common
    open var backgroundColor: UIColor!{
        didSet {
            if let value = backgroundColor {
                var key = kPOPLayerBackgroundColor
                if self.target is UIView {
                    key = kPOPViewBackgroundColor
                }
                let anim = animator(key)
                anim.toGenericValue(value,type)
                addAnimate(anim)
            }
        }
    }
    
    open var bounds: CGRect!{
        didSet {
            if let value = bounds {
                var key = kPOPLayerBounds
                if self.target is UIView {
                    key = kPOPViewBounds
                }
                let anim = animator(key)
                anim.toGenericValue(NSValue(cgRect:value),type)
                addAnimate(anim)
            }
        }
    }
    
    
    open var scaleX: CGFloat!{
        didSet {
            if let value = scaleX {
                var key = kPOPLayerScaleX
                if self.target is UIView {
                    key = kPOPViewScaleX
                }
                let anim = animator(key)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var scaleXY: CGSize!{
        didSet {
            if let value = scaleXY {
                var key = kPOPLayerScaleXY
                if self.target is UIView {
                    key = kPOPViewScaleXY
                }
                let anim = animator(key)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var scaleY: CGFloat!{
        didSet {
            if let value = scaleY {
                var key = kPOPLayerScaleY
                if self.target is UIView {
                    key = kPOPViewScaleY
                }
                let anim = animator(key)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var size: CGSize!{
        didSet {
            if let value = size {
                var key = kPOPLayerSize
                if self.target is UIView {
                    key = kPOPViewSize
                }
                let anim = animator(key)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    // MARK: - CALayer
    
    
    
    
    
    open var cornerRadius: CGFloat!{
        didSet {
            if let value = cornerRadius {
                let anim = animator(kPOPLayerCornerRadius)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var borderWidth: CGFloat!{
        didSet {
            if let value = borderWidth {
                let anim = animator(kPOPLayerBorderWidth)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var borderColor: UIColor!{
        didSet {
            if let value = borderColor {
                let anim = animator(kPOPLayerBorderColor)
                anim.toGenericValue(value,type)
                addAnimate(anim)
            }
        }
    }
    
    open var opacity: CGFloat!{
        didSet {
            if let value = opacity {
                let anim = animator(kPOPLayerOpacity)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var position: CGPoint!{
        didSet {
            if let value = position {
                let anim = animator(kPOPLayerPosition)
                anim.toGenericValue(NSValue(cgPoint:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var positionX: CGFloat!{
        didSet {
            if let value = positionX {
                let anim = animator(kPOPLayerPositionX)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var positionY: CGFloat!{
        didSet {
            if let value = positionY {
                let anim = animator(kPOPLayerPositionY)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var rotation: CGFloat!{
        didSet {
            if let value = rotation {
                let anim = animator(kPOPLayerRotation)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var rotationX: CGFloat!{
        didSet {
            if let value = rotationX {
                let anim = animator(kPOPLayerRotationX)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var rotationY: CGFloat!{
        didSet {
            if let value = rotationY {
                let anim = animator(kPOPLayerRotationY)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    
    
    open var subscaleXY: CGSize!{
        didSet {
            if let value = subscaleXY {
                let anim = animator(kPOPLayerSubscaleXY)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var subtranslationX: CGFloat!{
        didSet {
            if let value = subtranslationX {
                let anim = animator(kPOPLayerSubtranslationX)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var subtranslationXY: CGSize!{
        didSet {
            if let value = subtranslationXY {
                let anim = animator(kPOPLayerSubtranslationXY)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var subtranslationY: CGFloat!{
        didSet {
            if let value = subtranslationY {
                let anim = animator(kPOPLayerSubtranslationY)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var subtranslationZ: CGFloat!{
        didSet {
            if let value = subtranslationZ {
                let anim = animator(kPOPLayerSubtranslationZ)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var translationX: CGFloat!{
        didSet {
            if let value = translationX {
                let anim = animator(kPOPLayerTranslationX)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var translationXY: CGSize!{
        didSet {
            if let value = translationXY {
                let anim = animator(kPOPLayerTranslationXY)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var translationY: CGFloat!{
        didSet {
            if let value = translationY {
                let anim = animator(kPOPLayerTranslationY)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var translationZ: CGFloat!{
        didSet {
            if let value = translationZ {
                let anim = animator(kPOPLayerTranslationZ)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var zPosition: CGPoint!{
        didSet {
            if let value = zPosition {
                let anim = animator(kPOPLayerZPosition)
                anim.toGenericValue(NSValue(cgPoint:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var shadowColor: UIColor!{
        didSet {
            if let value = shadowColor {
                let anim = animator(kPOPLayerShadowColor)
                anim.toGenericValue(value,type)
                addAnimate(anim)
            }
        }
    }
    
    open var shadowOffset: CGSize!{
        didSet {
            if let value = shadowOffset {
                let anim = animator(kPOPLayerShadowOffset)
                anim.toGenericValue(NSValue(cgSize:value),type)
                addAnimate(anim)
            }
        }
    }
    
    open var shadowOpacity: CGFloat!{
        didSet {
            if let value = shadowOpacity {
                let anim = animator(kPOPLayerShadowOpacity)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    open var shadowRadius: CGFloat!{
        didSet {
            if let value = shadowRadius {
                let anim = animator(kPOPLayerShadowRadius)
                anim.toGenericValue(value as AnyObject,type)
                addAnimate(anim)
            }
        }
    }
    
    
    typealias ApplyToProtocol = (AnyObject)->Void
    var applyToBlock: ApplyToProtocol!
    var doneBlock: NextAnimtionBlock!
    // MARK: - private
     var animateWhenSet: Bool = false
     var animating: Bool = false
     var animates = [AnyObject]()
     var animatesQueue = [AnyObject]()
     var delayTime: Double = 0
     var type: AnimateType = .spring
     weak var target: NSObject!{
        didSet{
            self.associate()
        }
    }
     var doneCount: Int = 0
    
     func addAnimate(_ obj:AnyObject){
        if animating && !animateWhenSet{
            animatesQueue.insert(obj, at: 0)
        }else{
            animates.append(obj)
            if animateWhenSet{
                if self.target != nil {
                    applyToBlock?(self.target)
                }
                
            }
        }
    }
}

// MARK: - Setter
extension BasicProperties {
    
    // MARK: - Common
    public func setAnimateBackgroundColor(_ value:UIColor){
        backgroundColor = value
    }
    public func setAnimateBounds(_ value:NSValue){
        bounds = value.cgRectValue
    }
    public func setAnimateScaleX(_ value:CGFloat){
        scaleX = value
    }
    public func setAnimateScaleXY(_ value:CGSize){
        scaleXY = value
    }
    public func setAnimateScaleY(_ value:CGFloat){
        scaleY = value
    }
    public func setAnimateSize(_ value:CGSize){
        size = value
    }
    
    // MARK: - UIView
    
    public func setAnimateAlpha(_ value:CGFloat){
        alpha = value
    }
    public func setAnimateTintColor(_ value:UIColor){
        tintColor = value
    }
    public func setAnimateFrame(_ value:NSValue){
        frame = value.cgRectValue
    }
    public func setAnimateCenter(_ value:NSValue){
        center = value.cgPointValue
    }
    // MARK: - CALayer
    
    
    public func setAnimateCornerRadius(_ value:CGFloat){
        cornerRadius = value
    }
    public func setAnimateBorderWidth(_ value:CGFloat){
        borderWidth = value
    }
    public func setAnimateBorderColor(_ value:UIColor){
        borderColor = value
    }
    public func setAnimateOpacity(_ value:CGFloat){
        opacity = value
    }
    public func setAnimatePosition(_ value:CGPoint){
        position = value
    }
    public func setAnimatePositionX(_ value:CGFloat){
        positionX = value
    }
    public func setAnimatePositionY(_ value:CGFloat){
        positionY = value
    }
    public func setAnimateRotation(_ value:CGFloat){
        rotation = value
    }
    public func setAnimateRotationX(_ value:CGFloat){
        rotationX = value
    }
    public func setAnimateRotationY(_ value:CGFloat){
        rotationY = value
    }
    
    public func setAnimateSubscaleXY(_ value:CGSize){
        subscaleXY = value
    }
    public func setAnimateSubtranslationX(_ value:CGFloat){
        subtranslationX = value
    }
    public func setAnimateSubtranslationXY(_ value:CGSize){
        subtranslationXY = value
    }
    public func setAnimateSubtranslationY(_ value:CGFloat){
        subtranslationY = value
    }
    public func setAnimateSubtranslationZ(_ value:CGFloat){
        subtranslationZ = value
    }
    public func setAnimateTranslationX(_ value:CGFloat){
        translationX = value
    }
    public func setAnimateTranslationXY(_ value:CGSize){
        translationXY = value
    }
    public func setAnimateTranslationY(_ value:CGFloat){
        translationY = value
    }
    public func setAnimateTranslationZ(_ value:CGFloat){
        translationZ = value
    }
    public func setAnimateZPosition(_ value:CGPoint){
        zPosition = value
    }
    public func setAnimateShadowColor(_ value:UIColor){
        shadowColor = value
    }
    public func setAnimateShadowOffset(_ value:CGSize){
        shadowOffset = value
    }
    public func setAnimateShadowOpacity(_ value:CGFloat){
        shadowOpacity = value
    }
    public func setAnimateShadowRadius(_ value:CGFloat){
        shadowRadius = value
    }
}


// MARK: - Private Function
extension BasicProperties: POPAnimationDelegate {
    
    fileprivate func associate(){
        if !self.target {
            objc_setAssociatedObject(self.target, &AnimateAssociatedKeys.SelfRetain, self, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    fileprivate func animator(_ name:String!)->POPPropertyAnimation{
        var anim: POPPropertyAnimation = POPSpringAnimation(propertyNamed: name)
        switch type {
        case .basic:
            anim = POPBasicAnimation(propertyNamed: name)
            break
        case .decay:
            anim = POPDecayAnimation(propertyNamed: name)
            break
        default:
            break
        }
        return anim
    }
    
     func playNext(){
//        debugPrint("play", appendNewline: true)
        if animateWhenSet {
            if self.animatesQueue.count > 0 {
                let anim: AnyObject = self.animatesQueue.removeLast()
                addAnimate(anim)
            }
        }else{
//            debugPrint("delay:\(self.delayTime)", appendNewline: true)
            if self.delayTime > 0 {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(self.delayTime
                    * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)) { () -> Void in
                        self.play()
                }
            }else{
                play()
            }
        }
    }
    fileprivate func play(){
//        debugPrint("next", appendNewline: true)
        if self.target.AnimatePopQueue.count > 0 {
            self.target.AnimatePopQueue.removeLastObject()
            if self.target.AnimatePopQueue.count > 0 {
                if let block = self.target.AnimatePopQueue.lastObject as? BlockOperation {
                    block.start()
                }
            }
        }else{
            !doneBlock ? doneBlock() : (debugPrint("no more animate"))
        }
    }
    
    // MARK: - POPAnimationDelegate
    
    public func pop_animationDidStop(_ anim: POPAnimation!, finished: Bool) {
        self.animateStop(anim, finished: finished)
    }
    
    func animateStop(_ anim: POPAnimation!, finished: Bool) {
        anim.delegate = nil
        doneCount += 1
        if doneCount == self.animates.count {
            animating = false
            if animateWhenSet {
                self.animates.removeAll(keepingCapacity: true)
            }
            doneCount = 0
            self.playNext()
        }
        
    }
}
// MARK: - Public Function
public extension BasicProperties {
    public func delay(_ delay:Double)->BasicProperties{
        self.delayTime = delay
        return self
    }
    public func done(_ done:@escaping NextAnimtionBlock){
        self.doneBlock = done
    }
}
