//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Prince Kumar on 9/23/15.
//  Copyright © 2015 Prince Kumar. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    var spacing = 5
    var stars = 5
    
    //MARK: Initialization
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let fillerStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        
        
        for _ in 0..<5 {
        
            let button = UIButton()
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(fillerStarImage, forState: .Selected)
            button.setImage(fillerStarImage, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenHighlighted = false
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons += [button]
            addSubview(button)
        }
        
    }
    
    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        //Offset each button's origin by the length of the button plus spacing.
        
        for(index, button) in ratingButtons.enumerate(){
            buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
            button.frame = buttonFrame
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize + spacing) * stars
        
        return CGSize(width: width, height: buttonSize)
    }
    
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton){
        print("Button Pressed ");
    }

}
