import UIKit

var greeting = "Hello, playground"

struct Queue<T> {
    
    private var container = [T]()
    
    mutating func enqueue(value: T) {
        container.append(value)
    }
    
    
    mutating func dequeue() -> T? {
        if container.isEmpty {
            return nil
        }
        return container.removeFirst()
    }
    
}


struct GraphAdjecent<T> {
    
    
    private var adjecentContainer = [String: [T]]()
    
    init(totalVertex: Int) {
        for i in 1...totalVertex {
            adjecentContainer["\(i)"] = []
        }
    }
    
    mutating func add(s: T, d: T) {
        adjecentContainer["\(s)"]?.append(d)
    }
    mutating func get(for s: T) -> [T]? {
        return adjecentContainer["\(s)"]
    }
}




struct Vertext<T> {
    let key: T
    var isVisited = false
}


var queue = Queue<Vertext<Int>>()
queue.enqueue(value: Vertext(key: 1))
queue.enqueue(value: Vertext(key: 2))
queue.enqueue(value: Vertext(key: 3))

queue.dequeue()
queue.dequeue()
queue.dequeue()
queue.dequeue()





var graphAdjecent = GraphAdjecent<Int>.init(totalVertex: 4)

graphAdjecent.add(s: 1, d: 2)
graphAdjecent.add(s: 1, d: 3)
graphAdjecent.add(s: 2, d: 3)


graphAdjecent.get(for: 2)

func bfs(startVertix: Vertext<Int>) {
    for key in 1...4 {
        
        let keys = graphAdjecent.get(for: key)
    }
}


