//
//  Utils.swift
//  sampl
//
//  Created by af on 2020/06/24.
//  Copyright © 2020 af. All rights reserved.
//

import Foundation

// singleton
class Utils {

    var kasens: [Kasen] = []

    static let shared: Utils = {
        let instance = Utils()
        // setup code
        return instance
    }()
    
    func fetchKasenData (completion: (([NSDictionary]?) -> Void)?) {

//        var semaphore = DispatchSemaphore (value: 0)

        var request = URLRequest(url: URL(string: "https://xxxxx.xxxx.jp/my_api.php")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            return
          }
            //          print(String(data: data, encoding: .utf8)!)
            
            if let json = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableLeaves) {
                
                guard let dicArray = json as? [NSDictionary] else { return }
                
                completion?(dicArray)
            }
            
//          semaphore.signal()
        }

        task.resume()
//        semaphore.wait()

    }
}


