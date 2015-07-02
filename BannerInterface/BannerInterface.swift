//
//  BannerInterface.swift
//  NotificationTesting
//
//  Created by Hamza Sood on 02/07/2015.
//  Copyright © 2015 Hamza Sood. All rights reserved.
//

import Cocoa
import SceneKit

class BannerInterface: NSViewController {
    
    @IBOutlet var sceneView: SCNView!
    override var nibName: String { return "BannerInterface" }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard let sceneURL = NSBundle.mainBundle().URLForResource("TextScene", withExtension: "scn") else {
            NSLog("Error: Unable to find TextScene.scn")
            return
        }
        let sceneSource = SCNSceneSource(URL: sceneURL, options: nil)
        do {
            sceneView.scene = try sceneSource.sceneWithOptions(nil)
            NSEvent.mouseLocation()
        }
        catch (let error as NSError) {
            NSLog("Error loading scene file. %@", error.debugDescription)
        }
    }
    
    
    
    
    //MARK: - Mouse Handling
    
    var mouseMovementMonitor: AnyObject?
    
    override func viewWillAppear() {
        super.viewWillAppear()
        mouseMovementMonitor = NSEvent.addGlobalMonitorForEventsMatchingMask(.MouseMovedMask) { [unowned self] event in
            if event.modifierFlags.contains(.AlternateKeyMask) {
                self.sceneView.scene!.rootNode.eulerAngles.y += event.deltaX*0.005
                self.sceneView.scene!.rootNode.eulerAngles.x += event.deltaY*0.005
            }
        }
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        if mouseMovementMonitor != nil {
            NSEvent.removeMonitor(mouseMovementMonitor!)
        }
    }
    
}
