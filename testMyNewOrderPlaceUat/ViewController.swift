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

        let url = "https://test.order.place/#/court-store-list/5175539845300224";
//        let options = ["features": "gps,scan,alipay,wechatpay", "alipayScheme": "alipaySchemes123mvfsdf"];
//        OrderPlace.openUrl(caller: self, url: url, options: options)
//
//
//


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

        let  options = ["features": "scan,gps", "member": member] as [String : Any];
        
        // If you integrate alipay
        // alipayScheme : Please keep consistent with URL Schemes in info
//        let options = ["features": "scan,gps,alipayhk","alipayScheme": "alipaySchemes123","member": member] as [String : Any];
        
        // If you integrate wechat pay
//         let  options = ["features": "scan,gps,wechatpayhk", "member": member] as [String : Any];
        
        // if you intergrate apple pay
        // appleMerchantIdentifier : you Merchant Identifier
//        let  options = ["features": "scan,gps,applepay", "member": member,"appleMerchantIdentifier": "merchant.com.aigens.pay"] as [String : Any];

        //OrderPlace.openUrl(caller: self, url: url, options: options);
    }

    @IBAction func open(_ sender: Any) {
//        let url = "http://192.168.0.236:8100/";
        let url = "https://test.order.place/#/court-store-list/5175539845300224";
        let options = ["features": "gps,scan,wechatpayhk,alipayhk", "alipayScheme": "alipaySchemes123mvfsdf"];
        OrderPlace.openUrl(caller: self, url: url, options: options)
    }

    @IBAction func scan(_ sender: Any) {
        let options = ["features": "gps,scan,alipay,wechatpay", "alipayScheme": "alipaySchemes123mvfsdf"];

        OrderPlace.scan(caller: self, options: options);
    }
}

