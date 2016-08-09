//
//  ViewController.swift
//  Ponte Pedo
//
//  Created by David Mar Alvarez on 6/8/16.
//  Copyright © 2016 David y Marilyn. All rights reserved.
//

import UIKit
import Foundation

class CartaView: UIView {
    
    @IBOutlet var upSuitLabel: UILabel!
    @IBOutlet var downSuitLabel: UILabel!
    @IBOutlet var upValueLabel: UILabel!
    @IBOutlet var downValueLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!

    @IBOutlet var retoNameLabel: UILabel!
    
    func configure(suit suit: String, value: String, title: String, retoDescription: String) {
        UIView.animateWithDuration(1.5, delay: 1.2, options: .CurveEaseOut , animations: { finished in print("") }, completion: { finished in print("") })
        
        upSuitLabel.text = suit
        downSuitLabel.text = suit
        upValueLabel.text = value
        downValueLabel.text = value
        descriptionTextView.text = retoDescription
        retoNameLabel.text = title
        descriptionTextView.font = .systemFontOfSize(35)
        self.reloadInputViews()
    }
    
    override func drawRect(rect: CGRect) {
        downSuitLabel.transform = CGAffineTransformMakeRotation(degreesToRadians(degrees: 180))
        downValueLabel.transform = CGAffineTransformMakeRotation(degreesToRadians(degrees: 180))
        super.drawRect(rect)
        self.layer.cornerRadius = 20.0
        self.clipsToBounds = true
    }
    
    func degreesToRadians(degrees degrees: Double) -> CGFloat{
        return CGFloat(degrees * M_PI / 180.0)
    }
}

class ViewController : UIViewController {

    @IBOutlet var cardView: CartaView!
    let retosViewModel = RetosViewModel()
    @IBOutlet var backCard: UIImageView!
    var firstAppear = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeAway = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        self.view.addGestureRecognizer(swipeAway)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    func swiped() {
        
        guard !firstAppear else {
            UIView.transitionFromView(backCard, toView: cardView, duration: 0.5, options: UIViewAnimationOptions.TransitionFlipFromRight , completion: { _ in
                self.cardView.hidden = false
                self.firstAppear = false
            })
            return
        }
    
        guard let reto = retosViewModel.nextReto() else { return }
        cardView.configure(suit: reto.carta.palo.rawValue, value: reto.carta.valor.rawValue, title: reto.nombre, retoDescription: reto.descripcion)
    }
}

