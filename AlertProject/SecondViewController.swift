

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var password2Label: UILabel!
    
    var myName = ""
    var myPassword = ""
    var myPassword2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Kullanıcı Adı: " + myName
        passwordLabel.text = "Şifre: " + myPassword
        password2Label.text = "Şifre Tekrarı" + myPassword2
        
    }
    

}
