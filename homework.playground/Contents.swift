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
    var statEngine: engine {
        willSet {
            if newValue == .start {
                print("Двигатель запускается")
            } else {
                print("Двигатель заглушен")
            }
        }
    }
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



var car = sportCar(mark: "porshe", years: 2009, volumeTrunk: 200, volumeBody: 400, statEngine: .start, statWindows: .open, volumeCargo: 150, statCargoTrunk: true, statCargoBody: true)
car.statEngine = .start

var car1 = sportCar(mark: "mercedes-benz", years: 2014, volumeTrunk: 300, volumeBody: 450, statEngine: .stop, statWindows: .close, volumeCargo: 300, statCargoTrunk: false, statCargoBody: true)
car1.statEngine = .stop





