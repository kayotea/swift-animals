//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Animal {
    let name: String
    var health: Int
    
    init(name: String) {
        self.name = name
        self.health = 100
    }
    func displayHealth(){
        print (self.health)
    }
}

class Cat: Animal {
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    func growl(){
        print("Rawr!")
    }
    func run(){
        print("Running")
        self.health -= 10
    }
}

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    override func growl() {
        print("ROAR! I am the King of the Jungle")
    }
}

class Cheetah: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    override func run() {
        if self.health >= 50 {
            print("Running fast")
            self.health -= 50
        } else {
            print ("Too tired to run")
        }
    }
    func sleep(){
        self.health += 50
        if self.health > 200 {
            self.health = 200
        }
    }
}

var kitty = Cat(name: "Puss in Boots")
print(kitty.name)
kitty.growl()
print("*")
var leo = Lion(name: "Leo")
print(leo.name)
leo.growl()
leo.run()
leo.run()
leo.run()
leo.growl()
print("*")
var cheeto = Cheetah(name: "Cheeto")
print(cheeto.name)
cheeto.growl()
cheeto.run()
cheeto.run()
cheeto.run()
cheeto.run()
cheeto.run()
cheeto.displayHealth()
