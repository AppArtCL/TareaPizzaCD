//
//  QuesoViewController.swift
//  TareaPizzaCD
//
//  Created by Cristian Diaz on 14-12-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - Links al view
    @IBOutlet weak var quesoPicker: UIPickerView!

    
    // MARK: - Variables
    var informacionPicker : [String] = ["Seleccione queso", "Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    
    // MARK: - Funciones
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.quesoPicker.dataSource = self;
        self.quesoPicker.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        if detallePizza[2] == "Mozarela" {
            self.quesoPicker.selectRow(1, inComponent: 0, animated: true)
        } else if detallePizza[2] == "Cheddar" {
            self.quesoPicker.selectRow(2, inComponent: 0, animated: true)
        } else if detallePizza[2] == "Parmesano" {
            self.quesoPicker.selectRow(3, inComponent: 0, animated: true)
        } else if detallePizza[2] == "Sin queso" {
            self.quesoPicker.selectRow(4, inComponent: 0, animated: true)
        } else if detallePizza[2] == "0" {
            self.quesoPicker.selectRow(0, inComponent: 0, animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - PickerView
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return informacionPicker.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return informacionPicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row>0) {
            detallePizza[2] = self.informacionPicker[row]
        }
        
        print(detallePizza)
        
    }
}
