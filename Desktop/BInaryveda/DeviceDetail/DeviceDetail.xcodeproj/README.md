# DeviceInfromation

Device Model Parameters Check

Model->  Yes https://stackoverflow.com/questions/26028918/how-to-determine-the-current-iphone-device-model

Manufacturer -> Always Apple

OS version -> Yes
var systemVersion = UIDevice.current.systemVersion
https://stackoverflow.com/questions/24503001/check-os-version-in-swift#:~:text=If%20you're%20using%20Swift,iOS%208%2B%20code%20here.%20%7D

App version -> Yes
let version = Bundle.main.infoDictionary!["CFBundleShortVersionString"]!
let build = Bundle.main.infoDictionary!["CFBundleVersion"]!
https://stackoverflow.com/questions/25965239/how-do-i-get-the-app-version-and-build-number-using-swift

OS Type -> Always iOS

Screen Resolution -> Yes
var bounds = UIScreen.main.bounds
var width = bounds.size.width 
var height = bounds.size.height
https://stackoverflow.com/questions/24084941/how-to-get-device-width-and-height

Device ID -> We will get vendorID  which is unique for a application installed in device
vendorID:- https://stackoverflow.com/questions/25925481/how-to-get-a-unique-device-id-in-swift

SIM Serial no -> No

Routed/Jailbroken -> Yes https://stackoverflow.com/questions/413242/how-do-i-detect-that-an-ios-app-is-running-on-a-jailbroken-phone

https://github.com/sat2eesh/ios-jailBroken

APPID -> We get bundle identifier
https://stackoverflow.com/questions/44272374/how-to-obtain-the-app-id-programmatically-in-swift



