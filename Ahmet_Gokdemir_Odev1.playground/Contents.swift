import UIKit


// 1 ------------------------------------------------------------------------------------------------------------------------------------------------------------
// Palindrome. Verilen Stringin palindrome olup olmadığını kontrol eden bir fonksiyon yazınız.

func isPalindrome(inputString: String) -> Bool {
    let stringLength = inputString.count
    var position = 0
    
    while position < stringLength / 2 {
        let startIndex = inputString.index(inputString.startIndex, offsetBy: position)
        let endIndex = inputString.index(inputString.endIndex, offsetBy: -position - 1)
        if inputString[startIndex] == inputString[endIndex] {
            position += 1
        } else {
            
            print("\(inputString) palindrome değildir.")
            return false
        }
    }
    
    print("\(inputString) palindrome dur.")
    return true
}

isPalindrome(inputString: "tetet")

// 2 ----------------------------------------------------------------------------------------------------------------------------------------------------------------
// Verilen bir array içerisindeki her bir elemanın sayısını veren bir fonksiyon yazınız.

func CountElements(input: [Any]){
    
    var arrayOfStrings: [String] = input.compactMap { String(describing: $0) }
    var counts: [String: Int] = [:]
    
    for item in arrayOfStrings {
        counts[item] = (counts[item] ?? 0) + 1
    }
    
    for (key, value) in counts {
        print("\(key) elemanı \(value) kere geçiyor")
    }
}
CountElements(input: ["a","3","a","2"])

/* 3 -------------------------------------------------------------------------------------------------------------------------------------------------------------
 "*" Karakterinden piramit oluşturan fonksiyonu yazınız. Parametre olarak kaç katlı olacağı alınsın.
 Örn: Parametre 3 ise çıktı aşağıdaki şekilde olmalı

*
**
***
 
*/

func MakePyramid1(input: Int){
    
    print("\(input) katlı yana yapışmış piramit aşağıdadır :")
    
    for i in 1...input
    {
      for _ in 1...i
      {
         print("*",terminator : "")
      }
      print("")
    }
}

MakePyramid1(input: 3)

/* 4 ------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 Yazdığınız piramit fonksiyonun çıktısını ortalı olacak şekilde yazınız. Örn:

   *
  * *
 * * *
 
*/

func MakePyramid2(input: Int){
    
    print("\(input) katlı ortalı piramit aşağıdadır :")
    
    for i in 1...input
    {
        for _ in stride(from: input, to: i, by: -1)
        {
            print(terminator : " ")
        }

        for _ in 1...i
        {
            print("*",terminator : " ")
        }
        print(" ")
    }
}

MakePyramid2(input: 5)
 
// 5.1 ---------------------------------------------------------------------------------------------------------------------------------------------------------
// https://projecteuler.net/archives ilk 3 soruyu çözünüz.

func AddUpMultiples(input: Int) -> Int{
    
    var total = 0
    
    for i in 1...input-1
    {
        if ((i%3 == 0)||(i%5 == 0)){
            total+=i
        }
    }
    print("\(input) a kadar olan 3 veya 5 in katı olan sayıların toplamı : \(total)")
    return total
}
AddUpMultiples(input: 1000)

// 5.2 ------------------------------------------------------------------------------------------------------------------------------------------------------------

func fibonacci(input: Int) -> Int {
    var total = 2
    var beforeFibonacciNumber = 1
    var nowFibonacciNumber = 2
    var afterFibonacciNumber = 0
    
    
    while (true){
        
        afterFibonacciNumber = beforeFibonacciNumber + nowFibonacciNumber
        
        if (afterFibonacciNumber > input){
            break
        }
        else {
            if (afterFibonacciNumber % 2 == 0){
                total = total + afterFibonacciNumber
            }
        beforeFibonacciNumber = nowFibonacciNumber
        nowFibonacciNumber = afterFibonacciNumber

        }
    }
    print("\(input) sayısını geçmeyen çift basamaklı fibonacci sayılarının toplamı : \(total)")
    return total
}
fibonacci(input: 4000000)

// 5.3 ----------------------------------------------------------------------------------------------------------------------------------------------------------
func findLargestPrimeFactor (givenNum : Int) -> Int {
    var numToFactor = givenNum
    var primeFactor = 2

    while numToFactor > 1 {

        if (numToFactor % primeFactor == 0) {
            numToFactor /= primeFactor
        }
        else {
            primeFactor += 1
        }
    }
    print("\(givenNum) sayısının en büyük asal çarpanı : \(primeFactor)")
    return primeFactor
}
findLargestPrimeFactor(givenNum: 600851475143)
// -------------------------------------------------------------------------------------------------------------------------------------------------------------
