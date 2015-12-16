//
//  MasaViewController.swift
//  TareaPizzaCD
//
//  Created by Cristian Diaz on 13-12-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: - Links al view
    @IBOutlet weak var masaPicker: UIPickerView!
    
    
    // MARK: - Variables
    var informacionPicker : [String] = ["Seleccione masa", "Delgada", "Crujiente", "Gruesa"]
    
    
    // MARK: - Funciones
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.masaPicker.dataSource = self;
        self.masaPicker.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        if detallePizza[1] == "Delgada" {
            self.masaPicker.selectRow(1, inComponent: 0, animated: true)
        } else if detallePizza[1] == "Crujiente" {
            self.masaPicker.selectRow(2, inComponent: 0, animated: true)
        } else if detallePizza[1] == "Gruesa" {
            self.masaPicker.selectRow(3, inComponent: 0, animated: true)
        } else if detallePizza[1] == "0" {
            self.masaPicker.selectRow(0, inComponent: 0, animated: true)
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
            detallePizza[1] = self.informacionPicker[row]
        }
                
        print(detallePizza)
        
    }
}
