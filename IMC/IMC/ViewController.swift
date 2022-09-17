//
//  ViewController.swift
//  IMC
//
//  Created by Caio Thomaz Nogueira  on 16/09/22.
//

import UIKit

class ViewController: UIViewController {

            @IBOutlet weak var tfWeight: UITextField!
            @IBOutlet weak var tfHeight: UITextField!
            @IBOutlet weak var lbResult: UILabel!
            @IBOutlet weak var ivResult: UIImageView!
            @IBOutlet weak var viResult: UIView!
            
            var imc: Double = 0
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
            }

            @IBAction func calculate(_ sender: Any) {
                // recuperando oq foi escrito
                // convertendo em double
                if let weight = Double(tfWeight.text!), let heigth = Double(tfHeight.text!) {
                    // pow(height,2)
                    imc = weight/(heigth * heigth)
                    showResults()
                }
            }
            
            func showResults() {
                var result: String = ""
                var image: String = ""
                
                // pode ser feito por if/else tb
                switch imc {
                case 0..<16:
                    result = "Magreza"
                    image = "abaixo"
                case 16..<18.5:
                    result = "abaixo do peso"
                    image = "abaixo"
                case 18.5..<25:
                    result = "Peso Ideal"
                    image = "ideal"
                case 25..<30:
                    result = "Sobrepeso"
                    image = "sobre"
                default:
                    result = "Obesidade"
                    image = "obesidade"
                }
                // pegar o valor do result e colocar no lbresult com o nome aquedado
                // pegar a img adequada com o result
                lbResult.text = result
                ivResult.image = UIImage(named: image)
                
                //para o view aparecer
                viResult.isHidden = false
            }
        }


