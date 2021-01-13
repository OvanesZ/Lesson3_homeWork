import Cocoa




enum engine {
    case start, stop
}




enum windows {
    case open, close
}


struct sportCar {
    let mark: String
    let years: Int
    let volumeTrunk: Double
    let volumeBody: Double
    var statEngine: engine
    var statWindows: windows
    let volumeCargo: Double
    var statCargoTrunk: Bool
    var statCargoBody: Bool
    
    mutating func startEngine() {
        self.statEngine = .start
    }
    
    mutating func stopEngine() {
        self.statEngine = .stop
    }
    
    mutating func openWindows() {
        self.statWindows = .open
    }
    
    mutating func closeWindows() {
        self.statWindows = .close
    }
    
    mutating func addCargo() {
        self.statCargoTrunk = true
        self.statCargoBody = true
    }
    
    mutating func takeCargo() {
        self.statCargoTrunk = false
        self.statCargoBody = false
    }
}






