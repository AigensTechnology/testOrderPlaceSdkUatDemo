//
//  ViewController.swift
//  testMyNewOrderPlaceUat
//
//  Created by 陈培爵 on 2018/11/22.
//  Copyright © 2018年 PeiJueChen. All rights reserved.
//

import UIKit
import OrderPlaceSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    private func allFunction() {
        let url = "https://test.order.place/#/court-store-list/5175539845300224";
//        let url = "https://cdc-dev.order.place/#/StoreList/latitude/22.3993429/longitude/114.19149120000002"

        //open an order view with the url
        //fill the member object with actual data
        var member = [String: Any]()
        member["memberId"] = "123456" //value TBD
        member["session"] = "ABCDEF" //value TBD
        member["source"] = "app1" //value TBD
        member["language"] = "zh" //en,zh,zh-cn
        member["name"] = "Optional Name" //Optional (with actual data)
        member["gender"] = "M" //Optional (with actual data)
        member["age"] = 25 //Optional (with actual data)
        member["phone"] = "65448231" //Optional (with actual data)
        member["email"] = "peter.liu@gmail.com" //Optional (with actual data)
        let  options = ["features": "scan,gps,applepay,alipayhk,wechatpayhk", "member": member,"appleMerchantIdentifier": "your apple Merchant Identifier","alipayScheme": "alipaySchemes123","disableScroll":true] as [String : Any];
//        let options = ["features": "scan,gps", "member": member] as [String: Any];
        OrderPlace.openUrl(caller: self, url: url, options: options);
    }
//
//    private func applePay() {
//        let url = "https://test.order.place/#/court-store-list/5175539845300224";
//        var member = [String: Any]()
//        member["memberId"] = "123456" //value TBD
//        member["session"] = "ABCDEF" //value TBD
//        member["source"] = "app1" //value TBD
//        member["language"] = "zh" //en,zh,zh-cn
//        member["name"] = "Optional Name" //Optional (with actual data)
//        member["gender"] = "M" //Optional (with actual data)
//        member["age"] = 25 //Optional (with actual data)
//        member["phone"] = "65448231" //Optional (with actual data)
//        member["email"] = "peter.liu@gmail.com" //Optional (with actual data)
//
//        // appleMerchantIdentifier : you Merchant Identifier
//        let options = ["features": "scan,gps,applepay", "member": member, "appleMerchantIdentifier": "your apple Merchant Identifier"] as [String: Any];
//        OrderPlace.openUrl(caller: self, url: url, options: options);
//    }
//    private func alipay() {
//
//        let url = "https://test.order.place/#/court-store-list/5175539845300224";
//        //open an order view with the url
//        //fill the member object with actual data
//        var member = [String: Any]()
//        member["memberId"] = "123456" //value TBD
//        member["session"] = "ABCDEF" //value TBD
//        member["source"] = "app1" //value TBD
//        member["language"] = "zh" //en,zh,zh-cn
//        member["name"] = "Optional Name" //Optional (with actual data)
//        member["gender"] = "M" //Optional (with actual data)
//        member["age"] = 25 //Optional (with actual data)
//        member["phone"] = "65448231" //Optional (with actual data)
//        member["email"] = "peter.liu@gmail.com" //Optional (with actual data)
//
//        // alipayScheme : Please keep same with URL Schemes in info
//        let options = ["features": "scan,gps,alipayhk", "alipayScheme": "alipaySchemes123", "member": member] as [String: Any];
//
//        OrderPlace.openUrl(caller: self, url: url, options: options);
//
//    }
//
//    private func wechatPay() {
//        let url = "https://test.order.place/#/court-store-list/5175539845300224";
//        //open an order view with the url
//        //fill the member object with actual data
//        var member = [String: Any]()
//        member["memberId"] = "123456" //value TBD
//        member["session"] = "ABCDEF" //value TBD
//        member["source"] = "app1" //value TBD
//        member["language"] = "zh" //en,zh,zh-cn
//        member["name"] = "Optional Name" //Optional (with actual data)
//        member["gender"] = "M" //Optional (with actual data)
//        member["age"] = 25 //Optional (with actual data)
//        member["phone"] = "65448231" //Optional (with actual data)
//        member["email"] = "peter.liu@gmail.com" //Optional (with actual data)
//
//
//        let options = ["features": "scan,gps,wechatpayhk", "member": member] as [String: Any];
//
//        OrderPlace.openUrl(caller: self, url: url, options: options);
//
//    }

    @IBAction func open(_ sender: Any) {
        allFunction();
    }

    @IBAction func scan(_ sender: Any) {
        var member = [String: Any]()
        member["memberId"] = "123456" //value TBD
        member["session"] = "ABCDEF" //value TBD
        member["source"] = "app1" //value TBD
        member["language"] = "zh" //en,zh,zh-cn
        member["name"] = "Optional Name" //Optional (with actual data)
        member["gender"] = "M" //Optional (with actual data)
        member["age"] = 25 //Optional (with actual data)
        member["phone"] = "65448231" //Optional (with actual data)
        member["email"] = "peter.liu@gmail.com" //Optional (with actual data)

        let options = ["features": "gps,scan,alipay,wechatpay", "member": member, "alipayScheme": "alipaySchemes123", "appleMerchantIdentifier": "your apple Merchant Identifier"] as [String : Any];
        OrderPlace.scan(caller: self, options: options);
    }
}

