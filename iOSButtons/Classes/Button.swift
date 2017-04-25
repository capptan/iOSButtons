//
//  Button.swift
//  Pods
//
//  Created by Dev-06 on 25/04/17.
//
//

import UIKit

open class RaisedButton: Button {
    /**
     Prepares the view instance when intialized. When subclassing,
     it is recommended to override the prepare method
     to initialize property values and other setup operations.
     The super.prepare method should always be called immediately
     when subclassing.
     */
    open override func prepare() {
        super.prepare()
        backgroundColor = .white
 
    }
}

open class Button: UIButton {
    /**
     A CAShapeLayer used to manage elements that would be affected by
     the clipToBounds property of the backing layer. For example, this
     allows the dropshadow effect on the backing layer, while clipping
     the image to a desired shape within the visualLayer.
     */
    open let visualLayer = CAShapeLayer()
    
    @IBInspectable
    open  var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set(value) {
            layer.cornerRadius = value
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepare()
    }
    
    /**
     An initializer that initializes the object with a CGRect object.
     If AutoLayout is used, it is better to initilize the instance
     using the init() initializer.
     - Parameter frame: A CGRect instance.
     */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        tintColor = UIColor.blue
        prepare()
    }
    
    /// A convenience initializer.
    public convenience init() {
        self.init(frame: .zero)
    }
    
    /**
     A convenience initializer that acceps an image and tint
     - Parameter image: A UIImage.
     - Parameter tintColor: A UI
     */
    public convenience init(image: UIImage?, tintColor: UIColor = UIColor.blue) {
        self.init()
        prepare()
    }
    
    /**
     A convenience initializer that acceps a title and title
     - Parameter title: A String.
     - Parameter titleColor: A UI
     */
    public convenience init(title: String?, titleColor: UIColor = UIColor.blue) {
        self.init()
        prepare()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        layoutVisualLayer()
        
    }
    
    open func bringImageViewToFront() {
        guard let v = imageView else {
            return
        }
        bringSubview(toFront: v)
    }
    
    /**
     Prepares the view instance when intialized. When subclassing,
     it is recommended to override the prepare method
     to initialize property values and other setup operations.
     The super.prepare method should always be called immediately
     when subclassing.
     */
    open func prepare() {
        prepareVisualLayer()
    }
}

extension Button {
    /// Prepares the visualLayer property.
    fileprivate func prepareVisualLayer() {
        visualLayer.zPosition = 0
        visualLayer.masksToBounds = true
        layer.addSublayer(visualLayer)
    }
}

extension Button {
    /// Manages the layout for the visualLayer property.
    fileprivate func layoutVisualLayer() {
        visualLayer.frame = bounds
        visualLayer.cornerRadius = cornerRadius
    }
}
