//
//  ViewController.swift
//  MSQRD
//
//  Created by Admin on 11/20/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pi: Float = 3.14
        let cornerStep: Float = 0.01
        let widthBetweenRing: Float = 2
        let spiralWidth:Float = 2.1
        let lineWidth = 4
        let arraySize = 100
        let turnCount: Float = 4
        
        var x: Float
        var y: Float
        var corner: Float = 0.0
        var str: String = ""
        var array = Array(repeating: Array(repeating: " ", count: arraySize), count: arraySize)
        
        while corner <= turnCount * 2 * pi {
            
            x = -((widthBetweenRing * corner * sin(corner)) / spiralWidth).rounded() + Float(arraySize / 2)
            y = (widthBetweenRing * corner * cos(corner)).rounded() + Float(arraySize / 2)
            
            corner += cornerStep
            
            for (index1, element1) in array.enumerated() {
                for (index2, _) in element1.enumerated() {
                    if(index1 == Int(x) && index2 == Int(y)) {
                        for i in 0...lineWidth {
                            array[index1][index2 - i] = "*"
                            array[index1 - 1][index2 - i] = "*"
                        }
                    }
                }
            }
        }
        
        for (index1, element1) in array.enumerated() {
            for (index2, _) in element1.enumerated() {
                str += "\(array[index1][index2])"
            }
            str += "\n"
        }
        
        print(str)
    }
}




