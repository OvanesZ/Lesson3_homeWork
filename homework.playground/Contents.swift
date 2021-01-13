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
    let statEngine: engine
    let statWindows: windows
    let volumeCargo: Double
    let statCargoTrunk: Bool
    let statCargoBody: Bool
}


