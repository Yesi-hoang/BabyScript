//
//  WindowController.swift
//  BabyScript
//
//  Created by 黄丽萍 on 16/7/11.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
   required init?(coder: NSCoder) {
        super.init(coder: coder)
        shouldCascadeWindows = true
    }
    override func windowDidLoad() {
        super.windowDidLoad()
        if let window = window, screen = window.screen{
            let offsetFromLeftOfScreen:CGFloat = 20.0
            let offsetFromTopOfScreen:CGFloat = 20.0
            let screenRect = screen.visibleFrame
            let newOriginY = screenRect.origin.y + screenRect.height - window.frame.height - offsetFromTopOfScreen
            window.setFrameOrigin(NSPoint(x:offsetFromLeftOfScreen,y:newOriginY))
            
        }
        
    }

}
