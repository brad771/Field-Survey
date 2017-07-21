

import UIKit

enum Classification: String {
    
    case amphibian
    case bird
    case fish
    case mammal
    case plant
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
    
}
