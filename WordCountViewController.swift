//
//  WordCountViewController.swift
//  BabyScript
//
//  Created by 黄丽萍 on 16/7/11.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

import Cocoa

class WordCountViewController: NSViewController {

    @IBOutlet weak var paragraphCountlabel: NSTextField!
    @IBOutlet weak var wordCountLabel: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func dismissWordCountWindow(sender:NSButton){
        let application = NSApplication.shared()
        application.stopModal()
    }
}
