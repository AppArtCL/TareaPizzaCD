//
//  TamanoViewController.swift
//  TareaPizzaCD
//
//  Created by Cristian Diaz on 13-12-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - Links al view
    @IBOutlet weak var tamañoPicker: UIPickerView!
    

    // MARK: - Variables
    var informacionPicker : [String] = ["Seleccione tamaño", "Chica", "Mediana", "Grande"]
    
    
    // MARK: - Funciones
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tamañoPicker.dataSource = self;
        self.tamañoPicker.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        if detallePizza[0] == "Chica" {
            self.tamañoPicker.selectRow(1, inComponent: 0, animated: true)
        } else if detallePizza[0] == "Mediana" {
            self.tamañoPicker.selectRow(2, inComponent: 0, animated: true)
        } else if detallePizza[0] == "Grande" {
            self.tamañoPicker.selectRow(3, inComponent: 0, animated: true)
        } else if detallePizza[0] == "0" {
            self.tamañoPicker.selectRow(0, inComponent: 0, animated: true)
        }
    }
    
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
            detallePizza[0] = self.informacionPicker[row]
        }
        
        print(detallePizza)
        
    }
}
