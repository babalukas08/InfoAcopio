//
//  Dispatch.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//


import Foundation

class Dispatch
{
    class Async
    {
        class func background(_ block: @escaping ()->()) {
            DispatchQueue.global(qos: .background).async(execute: block)
        }
        
        class func high(_ block: @escaping ()->()) {
            DispatchQueue.global(qos: .userInitiated).async(execute: block)
        }
        
        class func main(_ block: @escaping ()->()) {
            DispatchQueue.main.async(execute: block)
        }
    }
    
    class Sync
    {
        class func background(_ block: ()->()) {
            DispatchQueue.global(qos: .background).sync(execute: block)
        }
        
        class func main(_ block: ()->()) {
            if Thread.isMainThread {
                block()
            }
            else {
                DispatchQueue.main.sync(execute: block)
            }
        }
    }
}
