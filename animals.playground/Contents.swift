//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

class animal {
    var name : String
    var health = 100
    init(name:String) {
        self.name = name
    }
    func displayHealth() {
        print(self.health)
    }
}

class Cat : animal {
    init(catname: String) {
        super.init(name: catname)
        self.health = 150
    }
    func growl() {
        print("Rawr!")
    }
    
    func run () {
        print("Running")
        self.health -= 10
    }
}

class Lion : Cat {
    init(lionname: String) {
        super.init(catname: lionname)
        self.health = 200
    }
    override func growl() {
    print( "ROAR!!!! I am the King of the Jungle")
    }
}

class Cheetah : Cat {
    init(cheetahname: String) {
        super.init(catname: cheetahname)
    }
    override func run() {
        if self.health >= 50 {
            print( "Running Fast" )
            self.health -= 50
        }
    }
    
    func sleep () {
        if self.health + 50 <= 200 {
            self.health += 50
        }
    }
}
print("cheetah")
var cheetah = Cheetah(cheetahname: "helu")
cheetah.displayHealth()
cheetah.sleep()
cheetah.sleep()
cheetah.displayHealth()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()
print("lion")
var lion = Lion(lionname: "leho")
lion.displayHealth()
lion.run()
lion.run()
lion.run()
lion.growl()
