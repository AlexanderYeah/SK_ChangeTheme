//
//  MyCell.swift
//  SK_ChangeTheme
//
//  Created by coder on 2019/4/2.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    
    @IBOutlet weak var faceImgBtn: UIButton!
    
    @IBOutlet weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // 设置主题的颜色
        
        faceImgBtn.theme_setImage("images.cellBtnImage", forState: UIControl.State.normal);
        titleLbl.theme_textColor = "colors.textColor";
        self.theme_backgroundColor = "colors.cellBackgroudColor";
        
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
