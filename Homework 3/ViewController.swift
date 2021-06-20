//
//  ViewController.swift
//  Homework 3
//
//  Created by Marat Tazhetdinov on 18.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    typealias PhysicalEducation = (pushUps: Int, pullUps: Int, squats: Int)
    typealias StudentsInfo = (name: String, lpn: String?, mark: Int?)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Task 1
        print("------------------------------")
        print("Task 1")
        print()
        let marat: PhysicalEducation = (40, 12, 53)
        print("Marat's results: push ups - \(marat.pushUps), pull-ups - \(marat.pullUps), squats - \(marat.squats)")
        
        //Task 2
        print("------------------------------")
        print("Task 2")
        print()
        print("Marat's results:")
        print("push ups - \(marat.0)")
        print("pull-ups - \(marat.pullUps)")
        print("squats - \(marat.2)")
        
        //Task 3
        print("------------------------------")
        print("Task 3")
        print()
        let vadim: PhysicalEducation = (32, 14, 60)
        print("Vadim's results: push ups - \(vadim.pushUps), pull-ups - \(vadim.pullUps), squats - \(vadim.squats)")
        
        //Task 4
        print("------------------------------")
        print("Task 4")
        print()
        let diff: PhysicalEducation = (marat.pushUps - vadim.pushUps, marat.pullUps - vadim.pullUps, marat.squats - vadim.squats)
        print("Final results:")
        
        if diff.pushUps>0
        {
            print ("push ups - Marat did \(diff.pushUps) push ups more than Vadim")
        }
        else if diff.pushUps == 0
        {
            print ("push ups - Marat and Vadim have the same result (\(diff.pushUps)")
        }
        else
        {
            print("push ups - Vadim did \(diff.pushUps*(-1)) push ups more than Marat")
        }
        
        if diff.pullUps>0
        {
            print ("pull-ups - Marat did \(diff.pullUps) pulls-ups more than Vadim")
        }
        else if diff.pullUps == 0
        {
            print ("pull-ups - Marat and Vadim have the same result (\(diff.pullUps)")
        }
        else
        {
            print("pull-ups - Vadim did \(diff.pullUps*(-1)) pull-ups more than Marat")
        }
        
        if diff.squats>0
        {
            print ("squats - Marat did \(diff.squats) squats more than Vadim")
        }
        else if diff.squats == 0
        {
            print ("squats - Marat and Vadim have the same result (\(diff.squats)")
        }
        else
        {
            print("squats - Vadim did \(diff.squats*(-1)) squats more than Marat")
        }
        
        //Task 5
        print("------------------------------")
        print("Task 5")
        print()
        let a = "7"
        print("a = \(a)")
        let b = "9x"
        print("b = \(b)")
        let c = "3"
        print("c = \(c)")
        let d = "y"
        print("d = \(d)")
        let e = "17"
        print("e = \(e)")
        print()
        print("Sum of all values:")
        
        var aOpt: Int?
        var bOpt: Int?
        var cOpt: Int?
        var dOpt: Int?
        var eOpt: Int?
        
        var sum: Int = 0
        
        aOpt = Int(a)!
        sum+=aOpt!
        
        if let x = Int(b)
        {
            bOpt = x
            sum+=bOpt!
        }
        else
        {
            bOpt = nil
        }
        
        if let y = Int(c)
        {
            cOpt = y
            sum+=cOpt!
        }
        else
        {
            cOpt = nil
        }
        
        if let z = Int(d)
        {
            dOpt = z
            sum+=dOpt!
        }
        else
        {
            dOpt = nil
        }
        
        eOpt = Int(e) ?? nil
        sum+=eOpt!
        
        print ("\(aOpt!) + \(bOpt) + \(cOpt!) + \(dOpt) + \(eOpt!) = \(sum)")
        
        //Task 6
        print("------------------------------")
        print("Task 6")
        print()
        
        var params : (code: Int, message: String?, errorMessage: String?) = (Int.random(in:200..<1000), nil , nil)
        
        if params.code>200&&params.code<300
        {
            print("code = \(params.code)")
            params.message = "Message"
            print ("\(params.message!)")
        }
        else
        {
            print("code = \(params.code)")
            params.errorMessage = "Error"
            print ("\(params.errorMessage!)")
        }
        
        print()
        
        if params.errorMessage==nil
        {
            print("code = \(params.code)")
            print ("\(params.message!)")
        }
        else
        {
            print("code = \(params.code)")
            print ("\(params.errorMessage!)")
        }
        
        //Task 7
        print("------------------------------")
        print("Task 7")
        print()
        
        var student1 : StudentsInfo
        var student2 : StudentsInfo
        var student3 : StudentsInfo
        var student4 : StudentsInfo
        var student5 : StudentsInfo
        
        student1 = ("Vladimir", nil, 5)
        student2 = ("Olga", "в487ор", nil)
        student3 = ("Lev", "к162на", 5)
        student4 = ("Elena", nil, 4)
        student5 = ("Vadim", nil, nil)
        
        print("Student \(student1.name):")
        if(student1.lpn==nil && student1.mark==nil)
        {
            print("\(student1.name) hasn't got a car and also he didn't pass the exam!")
        }
        else if (student1.lpn==nil)
        {
            print("\(student1.name) hasn't got a car but he passed the exam \(student1.mark!) out of 5!")
        }
        else if (student1.mark==nil)
        {
            print("\(student1.name) has got a car with license plate number \(student1.lpn!) but he didn't pass the exam!")
        }
        else
        {
            print("\(student1.name) has got a car with license plate number \(student1.lpn!) and he passed the exam \(student1.mark!) out of 5!")
        }
        
        print()
        
        print("Student \(student2.name):")
        if(student2.lpn==nil && student2.mark==nil)
        {
            print("\(student2.name) hasn't got a car and also she didn't pass the exam!")
        }
        else if (student2.lpn==nil)
        {
            print("\(student2.name) hasn't got a car but she passed the exam \(student2.mark!) out of 5!")
        }
        else if (student2.mark==nil)
        {
            print("\(student2.name) has got a car with license plate number \(student2.lpn!) but she didn't pass the exam!")
        }
        else
        {
            print("\(student2.name) has got a car with license plate number \(student2.lpn!) and she passed the exam \(student2.mark!) out of 5!")
        }
        
        print()
        
        print("Student \(student3.name):")
        if(student3.lpn==nil && student3.mark==nil)
        {
            print("\(student3.name) hasn't got a car and also he didn't pass the exam!")
        }
        else if (student3.lpn==nil)
        {
            print("\(student3.name) hasn't got a car but he passed the exam \(student3.mark!) out of 5!")
        }
        else if (student3.mark==nil)
        {
            print("\(student3.name) has got a car with license plate number \(student3.lpn!) but he didn't pass the exam!")
        }
        else
        {
            print("\(student3.name) has got a car with license plate number \(student3.lpn!) and he passed the exam \(student3.mark!) out of 5!")
        }
        
        print()
        
        print("Student \(student4.name):")
        if(student4.lpn==nil && student4.mark==nil)
        {
            print("\(student4.name) hasn't got a car and also she didn't pass the exam!")
        }
        else if (student4.lpn==nil)
        {
            print("\(student4.name) hasn't got a car but she passed the exam \(student4.mark!) out of 5!")
        }
        else if (student4.mark==nil)
        {
            print("\(student4.name) has got a car with license plate number \(student4.lpn!) but she didn't pass the exam!")
        }
        else
        {
            print("\(student4.name) has got a car with license plate number \(student4.lpn!) and she passed the exam \(student4.mark!) out of 5!")
        }
        
        print()
        
        print("Student \(student5.name)")
        if(student5.lpn==nil && student5.mark==nil)
        {
            print("\(student5.name) hasn't got a car and also he didn't pass the exam!")
        }
        else if (student5.lpn==nil)
        {
            print("\(student5.name) hasn't got a car but he passed the exam \(student5.mark!) out of 5!")
        }
        else if (student5.mark==nil)
        {
            print("\(student5.name) has got a car with license plate number \(student5.lpn!) but he didn't pass the exam!")
        }
        else
        {
            print("\(student5.name) has got a car with license plate number \(student5.lpn!) and he passed the exam \(student5.mark!) out of 5!")
        }
      
        //Task 8
        print("------------------------------")
        print("Task 8")
        print()
        print("Tuple with Int?:")
        
        let optNums : (Int?, Int?, Int?, Int?, Int?) = (4, 15, 3, 12, 7)
        
        print("optNums = \(optNums.0), \(optNums.1), \(optNums.2), \(optNums.3), \(optNums.4)")
        
        print()
        
        //Sum for optional binding
        var sumOB: Int = 0
        
        if let x = optNums.0
        {
            sumOB+=x
        }
        if let y = optNums.1
        {
            sumOB+=y
        }
        if let z = optNums.2
        {
            sumOB+=z
        }
        if let w = optNums.3
        {
            sumOB+=w
        }
        if let v = optNums.4
        {
            sumOB+=v
        }
        
        print("Using optional biding:")
        print("sum = \(sumOB)")
        print()
        
        //Sum for forced unwrapped
        var sumFU = optNums.0! + optNums.1! + optNums.2! + optNums.3! + optNums.4!
        print("Using forced unwrapped:")
        print("sum = \(sumFU)")
        print()
        
        //Sum for ??
        var sumQ: Int = 0
        sumQ = sumQ + (optNums.0 ?? 0)
        sumQ = sumQ + (optNums.1 ?? 0)
        sumQ = sumQ + (optNums.2 ?? 0)
        sumQ = sumQ + (optNums.3 ?? 0)
        sumQ = sumQ + (optNums.4 ?? 0)
        print("Using ??:")
        print("sum = \(sumQ)")
      
        
        
        
        
        
        
        
        
        
        
        
        
        }
   }




