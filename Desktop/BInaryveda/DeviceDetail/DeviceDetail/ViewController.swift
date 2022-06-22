//
//  ViewController.swift
//  DeviceDetail
//
//  Created by Shreeya Maskey on 6/14/22.
//

import UIKit
import AppTrackingTransparency
import AdSupport

class ViewController: UIViewController {
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var osVersionLabel: UILabel!
    @IBOutlet weak var appversionLabel: UILabel!
    @IBOutlet weak var osTypeVersion: UILabel!
    @IBOutlet weak var screenResolutionLabel: UILabel!
    @IBOutlet weak var deviceIDLabel: UILabel!
    @IBOutlet weak var simSerialNumberLabel: UILabel!
    @IBOutlet weak var jailBreakLabel: UILabel!
    @IBOutlet weak var postApiLabel: UILabel!
    @IBOutlet weak var appIDLabel: UILabel!
    
    var appID = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modelLabel.text = "Model:- \(getModel())"
        manufacturerLabel.text = "Manufacturer:- \(getManufacturer())"
        osVersionLabel.text = "OS version:- \(getOSVersion())"
        appversionLabel.text = "\(getAppVersion())"
        osTypeVersion.text = "\(getOSType())"
        screenResolutionLabel.text = "\(getScreenResolution())"
        deviceIDLabel.text = "\(getDeviceID())"
        simSerialNumberLabel.text = "Sim Serial Number: Not Available"
        jailBreakLabel.text = "Is jail Broken: \(UIDevice.current.isJailBroken)"
        appIDLabel.text = "\(getAPPID())"
        
        print("Model:- \(getModel())")
        print("Manufacturer:- \(getManufacturer())")
        print("OS version:- \(getOSVersion())")
        print("\(getAppVersion())")
        print("\(getOSType())")
        print("\(getScreenResolution())")
        print("\(getDeviceID())")
        print("Sim Serial Number: Not Available")
        print("Is jail Broken: \(UIDevice.current.isJailBroken)")
        print("\(getAPPID())")
    }
    
    func getModel() -> String {
        let modelName = UIDevice.modelName
        return modelName
    }
    
    func getManufacturer() -> String {
        return "Apple"
    }
    
    func getOSVersion() -> String {
        let systemVersion = UIDevice.current.systemVersion
        return systemVersion
    }
    
    func getAppVersion() -> String {
        if let version = Bundle.main.infoDictionary!["CFBundleShortVersionString"] {
            if let build = Bundle.main.infoDictionary!["CFBundleVersion"] {
                return "Version: \(version), Build: \(build)"
            }
        }
        return "Version: Not available"
    }
    
    func getOSType() -> String {
        return "OS Type: iOS"
    }
    
    func getScreenResolution() -> String {
        let bounds = UIScreen.main.bounds
        let width = bounds.size.width
        let height = bounds.size.height
        return "Screen Resolution: \(width) W x \(height) H \r\n Width: \(width) \r\n Height: \(height)"
    }
    
    func getDeviceID() -> String {
        if let vendonrID = UIDevice.current.identifierForVendor?.uuidString {
            return "Device ID (aka VendorID): \(vendonrID)"
        }
        return "Device ID (aka VendorID): Not available"
    }
    
    func getAPPID() -> String {
        if let bundleIdentifier = Bundle.main.bundleIdentifier {
            return "App ID (bundle Identifier): \(bundleIdentifier)"
        }
        return "App ID: Not available"
    }

}

