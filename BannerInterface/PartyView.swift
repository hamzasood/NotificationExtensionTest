//
//  PartyView.swift
//  NotificationTesting
//
//  Created by Hamza Sood on 02/07/2015.
//  Copyright © 2015 Hamza Sood. All rights reserved.
//

import Cocoa

class PartyView: NSView {
    
    private func setupLayer() {
        layer = CALayer()
        wantsLayer = true
        
        let backgroundAnimation = CABasicAnimation(keyPath: "backgroundColor")
        backgroundAnimation.duration = 0.75
        backgroundAnimation.autoreverses = true
        backgroundAnimation.repeatCount = FLT_MAX
        backgroundAnimation.fromValue = NSColor.purpleColor().CGColor
        backgroundAnimation.toValue = NSColor.orangeColor().CGColor
        layer!.addAnimation(backgroundAnimation, forKey: nil)
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        setupLayer()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayer()
    }
    
}
