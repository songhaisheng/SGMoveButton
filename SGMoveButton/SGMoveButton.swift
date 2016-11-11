//
//  SGMoveButton.swift
//  SGMoveButton
//
//  Created by SG on 16/11/11.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

/// 可以随意拖动位置的按钮组件
class SGMoveButton: UIButton
{
    // MARK: - properties
    var parentView:UIView?;
    
    // MARK: - life cycle
    override init(frame:CGRect)
    {
        super.init(frame:frame);
        
        let recognizer:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(SGMoveButton.eventPanGestureRecognizerHandler(_:)));
        self.addGestureRecognizer(recognizer);
    }
    
    required init?(coder aDecoder:NSCoder)
    {
        super.init(coder:aDecoder);
    }
    
    deinit
    {

    }
    
    // MARK: - public methods
    
    // MARK: - event response
    internal func eventPanGestureRecognizerHandler(_ sender:UIPanGestureRecognizer)
    {
        if (sender.state == UIGestureRecognizerState.changed)
        {
            let currentPoint:CGPoint = sender.translation(in: self.parentView);// 获得pan手势相对于parentView移动的CGPoint
            self.center = CGPoint(x: self.center.x + currentPoint.x, y: self.center.y + currentPoint.y); // 按照上面相对移动的CGPoint改变button的CGPoint
            sender.setTranslation(CGPoint.zero, in: self.parentView); // 将pan手势相对于parentView的CGPoint置零
        }
    }
}
