//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

struct point {
    var x : Double
    var y : Double
}

struct line {
    var start : point
    var end : point
    
    func length() -> Double{
        let xline = (start.x - end.x)*(start.x - end.x)
        let yline = (start.y - end.y)*(start.y - end.y)
        return sqrt(xline + yline)
    }
}

struct Triangle {
    var points : [point]
}

var l = line(start:point(x:3,y:4), end:point(x:4,y:5))
print(l.length())

