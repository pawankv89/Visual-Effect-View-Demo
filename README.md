# Visual-Effect-View-Demo

## Visual Effect View Demo for using Blur View on any View.


Added Some screens here.

![](https://github.com/pawankv89/Visual-Effect-View-Demo/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Visual-Effect-View-Demo/blob/master/images/screen_2.png)

## Usage

#### Controller

``` swift 


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
     private var blurView: UIVisualEffectView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func EffectButtonTap(_ sender: Any) {
    
        setupBlur(isShow: true, onView: self.profileImageView)
    }
    @IBAction func EffectClearButtonTap(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
          
            self.setupBlur(isShow: false, onView: self.profileImageView)
        }
    }
    
    func setupBlur(isShow: Bool, onView: UIView) {
     
        if isShow == true {
           
            if self.blurView != nil {self.blurView.removeFromSuperview()}
            
            blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            blurView.frame = CGRect.init(x: 0, y: 0, width: onView.frame.size.width, height: onView.frame.size.height)
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            blurView.alpha = 0.8
            onView.addSubview(blurView)
            
        } else {
             self.blurView.removeFromSuperview()
        }
        
    }
}



```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 

