//
//  ViewController.swift
//  dshcvd
//
//  Created by Kamal Negi on 12/07/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    var animationView: AnimationView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = .init(name: "onboardingAnimation")

          animationView!.frame = view.bounds

          // 3. Set animation content mode

          animationView!.contentMode = .scaleAspectFit

          // 4. Set animation loop mode

          animationView!.loopMode = .loop

          // 5. Adjust animation speed

          animationView!.animationSpeed = 1

          view.addSubview(animationView!)
        animationView?.logHierarchyKeypaths()
//
        let orange = Color(r: (0/255), g: (128/255), b: (0/255), a: 1)
        let orangeColorValueProvider = ColorValueProvider(orange)
        let keyPath = AnimationKeypath(keys: ["Grey/1.1 Outlines", "**", "Fill 1", "Color"])
        animationView!.setValueProvider(orangeColorValueProvider, keypath: keyPath)
          // 6. Play animation

//        animationView?.backgroundColor = .blue

          animationView!.play()
//        let demoView = UIView()
//        demoView.frame = CGRect(x: 100, y: 100, width: view.bounds.width, height: 200)
//        demoView.backgroundColor = .orange
//        view.addSubview(demoView)
//        let radius: CGFloat = demoView.frame.width / 2.0 //change it to .height if you need spread for height
//        let shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 2 * radius, height: -4))
//        //Change 2.1 to amount of spread you need and for height replace the code for height
////
////        demoView.layer.cornerRadius = 2
//        demoView.layer.shadowColor = UIColor.black.cgColor
//        demoView.layer.shadowOffset = CGSize(width: 0, height: 0)  //Here you control x and y
//        demoView.layer.shadowOpacity = 0.5
//        demoView.layer.shadowRadius = 4.0 //Here your control your blur
//        demoView.layer.masksToBounds =  false
//        demoView.layer.shadowPath = shadowPath.cgPath
    }


}

