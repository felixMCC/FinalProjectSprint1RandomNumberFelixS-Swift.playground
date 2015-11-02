//: Playground - noun: a place where people can play

import UIKit

var str = "Sprint 1: MVC Paradigm and Random number generator.\nFelix Sotres\n"
println(str)

class Control{
    //create objects for MVC paradigm
    var theModel = Model()
    var theView = View()
    
    //main program function
    func run()-> Void{
        //testing: Make sure I can reference the Model and View
        theModel.identify()
        theView.identify()
        
        //demonstrate random number generator works
        for var i = 0; i < 10; ++i{
            theView.printToUser("random number: \(theModel.randomNumber())")
        }
    }
    
}//end Control Class

class Model{
    init(){
        //null
    }
    
    func identify() -> Void{
        println("Im the Model!")
    }
    
    func randomNumber() -> Int{
        //get current minutes
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        let minutes = components.minute
        
        //create seed for random number
        var seed: UInt32 = UInt32(minutes)
        //get random number based off seed (current minute)
        var randomNumber = arc4random_uniform(seed)
        return Int(randomNumber)
    }
    
}//end Model Class

class View{
    init(){
        //null
    }
    
    func identify() -> Void{
        println("Im the View!")
    }
    
    func printToUser(message : String)-> Void{
        println(message)
    }
    
}//end View Model


var runProgram = Control()
runProgram.run()
