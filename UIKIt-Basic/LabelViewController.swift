//
//  Label.swift
//  UIKIt-Basic
//
//  Created by Students on 22.12.2022.
//

import UIKit

class LabelViewController: UIViewController {
    
    
    @IBOutlet var headTitile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
        headTitile = UILabel(frame: CGRect(
            x: 30,
            y: 30,
            width: 200,
            height: 150))
        
        
        
        // Accessing the text attributes
        
        //  - text: String? // default is nil
        headTitile.text = "Label"
        
        // - font: UIFont! // default is nil (system font 17 plain)
        headTitile.font = UIFont(name: title!, size: 24)
        
        // - textColor: UIColor! // default is labelColor
        headTitile.textColor = .systemTeal
        
        
        // - textAlignment: NSTextAlignment
        //     left, right, center, justified, natural (d)
        //  natural :  Text uses the default alignment for the current localization of the app.
                                                
        headTitile.textAlignment = .center
        
        
        // - lineBreakMode: NSLineBreakMode
        // default is NSLineBreakByTruncatingTail.
        // used for single and multiple lines of text
        
        // .byTruncatingHead byTruncatingMiddle byTruncatingTail
        // ? byClipping byCharWrapping byWordWrapping
        headTitile.lineBreakMode = .byWordWrapping
        
        
        
        // DRAWING A SHADOW
        // - shadowColor: UIColor? // default is nil (no shadow)
        headTitile.shadowColor = .black
        
        // - shadowOffset: CGSize // default is CGSizeMake(0, -1) -- a top shadow
        headTitile.shadowOffset = CGSizeMake(0, -1)
        
       
        
        // this determines the number of lines to draw and what to do when sizeToFit is called.
            // default value is 1 (single line)
            // A value of 0 means no limit
        // if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be truncated using the line break mode.
        
        // - numberOfLines: Int
        headTitile.numberOfLines = 1



        // these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor and to specify how the text baseline moves when it needs to shrink the font.
        
        // - adjustsFontSizeToFitWidth: Bool // default is NO
        headTitile.adjustsFontSizeToFitWidth = true
        
        
        // - baselineAdjustment: UIBaselineAdjustment
        // .alignBaselines (d) alignCenters none
        headTitile.baselineAdjustment = .alignCenters
        
        
        // - minimumScaleFactor: CGFloat // default is 0.0
        headTitile.minimumScaleFactor = 0.8 // from 0.0 to 1
        
        
        
//        view.addSubview(label)
    }
    

}
