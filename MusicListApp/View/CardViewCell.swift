//
//  CardViewCell.swift
//  MusicListApp
//
//  Created by 中條航紀 on 2020/03/08.
//  Copyright © 2020 中條航紀. All rights reserved.
//

import UIKit
import VerticalCardSwiper

class CardViewCell: CardCell {
    
    
    @IBOutlet weak var artWorkImageView: UIImageView!
    @IBOutlet weak var musicNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
          super.prepareForReuse()
        
    }
    
    public func setRandomBackgroundColor() {

           let randomRed: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
           let randomGreen: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
           let randomBlue: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
           self.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
       }

    

    override func layoutSubviews() {
        
        self.layer.cornerRadius = 12
        super.layoutSubviews()
        
    }
    
}
