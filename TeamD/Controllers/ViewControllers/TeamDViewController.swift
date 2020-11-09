//
//  TeamDViewController.swift
//  TeamD
//
//  Created by Jason Koceja on 11/9/20.
//

import UIKit

class TeamDViewController: UIViewController {

    // MARK: - Properties
    var teamName = "Team D"
    var teamDescription = "Quite possibily one of the greatest teams to ever exist. You see, long ago, there were three Gods, J-MONEY, T-DAWG, and, B-BOY, all of whom were capable of producing the best (yet most simple) application in the entire world. These three Gods fought for many years with conflicting views...that is...until the evil planet filled with iOS instructors decided to invade their world with bootcamps, offering excellerated learning and a new career opportunity. The three Gods felt like they had no choice but to take them on full-force and let's just say the rest is history. Congratulations, you've been blessed with the best application known to man. Welcome."
    var currentDate = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor(hex: "#3498DB")
    }
    
    // MARK: - Class Functions
    func formatDate(date: Date) -> String {
        let format = DateFormatter()
        format.dateFormat = "MM-dd-yyyy"
        return format.string(from: date)
    }
    
    let riverBlue = UIColor(hex: "#3498DB")
} // END OF CLASS

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}
