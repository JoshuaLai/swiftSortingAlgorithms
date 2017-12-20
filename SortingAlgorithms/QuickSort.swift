import Foundation

class QuickSort {
    func sort(list: Array<Int>) -> Array<Int>? {
        guard list.count > 0 else { return nil }
        
        var mutableList = list
        var smallList: Array<Int> = []
        var largeList: Array<Int> = []
        
        let randomPivot = Int(arc4random_uniform(UInt32(list.count)))
        let pivotVaue = list[randomPivot]
        mutableList.remove(at: randomPivot)
        
        for value in mutableList {
            if value < pivotVaue {
                smallList.append(value)
            } else {
                largeList.append(value)
            }
        }
        
        var sortedList: Array<Int> = []
        
        if let smallSorted = sort(list: smallList) {
            sortedList += smallSorted
        }
        
        sortedList.append(pivotVaue)
        
        if let largeSorted = sort(list: largeList) {
            sortedList += largeSorted
        }
        
        return sortedList
    }
}
