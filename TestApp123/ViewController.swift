//
//  ViewController.swift
//  TestApp123
//
//  Created by AT5HK on 5/2/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
        let iOSVersion = getiOSVersion()
        let sdkVersion = getSDKName()
        print("iOS Version: \(iOSVersion)")
        print("iOS SDK Version: \(sdkVersion)")
        
    }
    
    func getiOSVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    func getSDKName() -> String {
        if let SDKName = Bundle.main.infoDictionary?["DTSDKName"] {
            return SDKName as! String
        }
        
        return "SDK name not found"
    }

    


}

