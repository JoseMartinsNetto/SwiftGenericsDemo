let intArr = [1,2,4,5,6]
let strArr = ["A", "B", "V", "U"]

func findLetterIndex(_ array: [String], letter: String) -> Int?{
    for (index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    
    return nil
}

func findIntIndex(_ array: [Int], intNum: Int) -> Int?{
    for (index, element) in array.enumerated() {
        if element == intNum {
            return index
        }
    }
    
    return nil
}

func findIndex<T: Comparable>(_ array: [T], key: T) -> Int?{
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    
    return nil
}

