//
//  IngredientesViewController.swift
//  TareaPizzaCD
//
//  Created by Cristian Diaz on 14-12-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    // MARK: - Link

    @IBOutlet weak var swJamon: UISwitch!
    @IBAction func swJamon(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[0] = "Jamón"
        } else {
            detalleIngredientes[0] = "0"
        }
    }
    
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBAction func swPepperoni(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[1] = "Pepperoni"
        } else {
            detalleIngredientes[1] = "0"
        }
    }
    
    @IBOutlet weak var swPavo: UISwitch!
    @IBAction func swPavo(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[2] = "Pavo"
        } else {
            detalleIngredientes[2] = "0"
        }
    }
    
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBAction func swSalchicha(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[3] = "Salchicha"
        } else {
            detalleIngredientes[3] = "0"
        }
    }
    
    @IBOutlet weak var swAceituna: UISwitch!
    @IBAction func swAceituna(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[4] = "Aceituna"
        } else {
            detalleIngredientes[4] = "0"
        }
    }
    
    @IBOutlet weak var swCebolla: UISwitch!
    @IBAction func swCebolla(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[5] = "Cebolla"
        } else {
            detalleIngredientes[5] = "0"
        }
    }
    
    @IBOutlet weak var swPimiento: UISwitch!
    @IBAction func swPimiento(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[6] = "Pimiento"
        } else {
            detalleIngredientes[6] = "0"
        }
    }
    
    @IBOutlet weak var swPina: UISwitch!
    @IBAction func swPina(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[7] = "Piña"
        } else {
            detalleIngredientes[7] = "0"
        }
    }
    
    @IBOutlet weak var swAnchoa: UISwitch!
    @IBAction func swAnchoa(sender: AnyObject) {
        let switch1 = sender as! UISwitch
        if switch1.on {
            detalleIngredientes[8] = "Anchoa"
        } else {
            detalleIngredientes[8] = "0"
        }    }
    
    
    // MARK: - Funciones
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let temporal = detalleIngredientes
        for var i = 0; i < 9; i++ {
            switch (i) {
            case 0:
                if temporal[i] == "0" {
                    swJamon.on = false
                } else {
                    swJamon.on = true
                }
            case 1:
                if temporal[i] == "0" {
                    swPepperoni.on = false
                } else {
                    swPepperoni.on = true
                }
            case 2:
                if temporal[i] == "0" {
                    swPavo.on = false
                } else {
                    swPavo.on = true
                }
            case 3:
                if temporal[i] == "0" {
                    swSalchicha.on = false
                } else {
                    swSalchicha.on = true
                }
            case 4:
                if temporal[i] == "0" {
                    swAceituna.on = false
                } else {
                    swAceituna.on = true
                }
            case 5:
                if temporal[i] == "0" {
                    swCebolla.on = false
                } else {
                    swCebolla.on = true
                }
            case 6:
                if temporal[i] == "0" {
                    swPimiento.on = false
                } else {
                    swPimiento.on = true
                }
            case 7:
                if temporal[i] == "0" {
                    swPina.on = false
                } else {
                    swPina.on = true
                }
            case 8:
                if temporal[i] == "0" {
                    swAnchoa.on = false
                } else {
                    swAnchoa.on = true
                }
            default:
                print(i)
            }
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

}
