//
//  ConfirmacionViewController.swift
//  TareaPizzaCD
//
//  Created by Cristian Diaz on 15-12-15.
//  Copyright © 2015 AppArt. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    // MARK: - Link

    @IBAction func cancelarOrden(sender: AnyObject) {
        performSegueWithIdentifier("cancelaOrden", sender: self)
    }
    
    @IBAction func confirmarOrden(sender: AnyObject) {
        if pizzaLista < 4 {
            let alertController = UIAlertController(title: "Creación de Pizza", message:
                "Faltan selecciones de la pizza.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        } else if pizzaLista == 4 {
            let alertController = UIAlertController(title: "Creación de Pizza", message:
            "La pizza se ha enviado a la cocina.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: {(alertAction) -> Void in
                self.performSegueWithIdentifier("cancelaOrden", sender: self)
            }))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    @IBOutlet weak var etiquetaTamaño: UILabel!
    @IBOutlet weak var etiquetaMasa: UILabel!
    @IBOutlet weak var etiquetaQueso: UILabel!
    @IBOutlet weak var etiquetaIngredientes: UILabel!

    // MARK: - Variables
    var pizzaLista = 0
    
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
        pizzaLista = 0
        
        if detallePizza[0] == "0" {
            etiquetaTamaño.text = "Falta seleccionar."
            pizzaLista = 0
        } else {
            etiquetaTamaño.text = detallePizza[0]
            pizzaLista = pizzaLista + 1
        }
        if detallePizza[1] == "0" {
            etiquetaMasa.text = "Falta seleccionar."
            pizzaLista = 0
        } else {
            etiquetaMasa.text = detallePizza[1]
            pizzaLista = pizzaLista + 1
        }
        if detallePizza[2] == "0" {
            etiquetaQueso.text = "Falta seleccionar."
            pizzaLista = 0
        } else {
            etiquetaQueso.text = detallePizza[2]
            pizzaLista = pizzaLista + 1
        }
        var texto = "0"
        for detalle in detalleIngredientes {
            if detalle != "0" {
                if texto == "0" {
                    texto = detalle
                } else {
                    texto = texto + ", " + detalle
                }
            }
        }
        if texto == "0" {
            etiquetaIngredientes.text = "Falta seleccionar."
            pizzaLista = 0
        } else {
            texto = texto + "."
            etiquetaIngredientes.text = texto
            pizzaLista = pizzaLista + 1
        }
        
    }
    

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "cancelaOrden" {
            detallePizza = ["0", "0", "0"]
            detalleIngredientes = ["0", "0", "0", "0", "0", "0", "0", "0", "0"]
        }
        
    }

}
