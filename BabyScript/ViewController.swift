//
//  ViewController.swift
//  BabyScript
//
//  Created by 黄丽萍 on 16/7/11.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var text: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.toggleRuler(nil)
        // Do any additional setup after loading the view.
    }

    @IBAction func showWordContentWindow(sender:AnyObject!){
        // 1. Instantiate the word count window controller, using the storyboard ID you specified before.

        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let wordCountWindowController = storyboard.instantiateController(withIdentifier: "Word Count Window Controller") as! NSWindowController
        // 2.Set the values retrieved from the text view in the word count window count outlets
        if let wordCountWindow = wordCountWindowController.window,textStorage = text.textStorage{
            let wordCountViewController = wordCountWindowController.contentViewController as!WordCountViewController

            wordCountViewController.wordCountLabel.stringValue =
            "\(textStorage.words.count)"
            wordCountViewController.paragraphCountlabel.stringValue = "\(textStorage.paragraphs.count)"
        
        // 3. Show the word count window modally
            let application = NSApplication.shared()
            application.runModal(for: wordCountWindow)
        }
        
        
    }
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

