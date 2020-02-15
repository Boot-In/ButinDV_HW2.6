//
//  MainScreenViewController.swift
//  HW 2
//
//  Created by Dmitriy Butin on 15.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func goToColorSettingButtonAction() {
        performSegue(withIdentifier: "goToSetupColor", sender: nil)
    }

    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
    }
    
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorSetupVC = segue.destination as! ColorScreenViewController
        let colorViewComponents = view.backgroundColor?.cgColor.components
        colorSetupVC.redSliderDefaultValue = Float(colorViewComponents![0])
        colorSetupVC.greenSliderDefaultValue = Float(colorViewComponents![1])
        colorSetupVC.blueSliderDefaultValue = Float(colorViewComponents![2])
        colorSetupVC.delegate = self
    }

}

extension MainScreenViewController: SetColorViewDelegate {
    func setColorView(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
}
