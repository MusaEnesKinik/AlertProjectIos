

import UIKit

class ViewController: UIViewController {
    
    var uName = ""
    var pswrd = ""
    var pswrd2 = ""
    
    // Allert (uyarı mesajı)
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextbuttonClicked(_ sender: Any) {
        
        uName = usernameText.text!
        pswrd = passwordText.text!
        pswrd2 = password2Text.text!
        
       // ikici ekrana kod ile geçiş yapmak için alt satırdaki kodu kullanıyoruz
       // performSegue(withIdentifier: "toOneVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // segue olmadan hemen önce yapılacak işlemleri bu hazır func a yazıyoruz
        if segue.identifier == "toOneVC" {
            
            let destinacionVC = segue.destination as! SecondViewController
            destinacionVC.myName = uName
            destinacionVC.myPassword = pswrd
            destinacionVC.myPassword2 = pswrd2
            
        }
    }
    
    @IBAction func signupClicked(_ sender: Any) {
      
        /*
         
//        uyarı mesajı oluşturduk adı alert. Uyarı mesajını bu sınıftan oluşturdık. Bizden başlık, mesaj ve stil istiyor, başlığı ve mesajı yazdık, enter a bastık ve nokta koyarak alert i seçtik; stili de alert (uyarı) olarak seçtik
        
        let allert = UIAlertController(title: "Error", message: "Kullanıcı Adı Bulunamadı!", preferredStyle: UIAlertController.Style.alert)
        
//        Hatamesajı göründükten sonra mesajı kapatmak için buton yapıyoruz. UIAlertAction oluşturduğumuz uyarı mesajının içine bie aksiyon oluşturup ekliyoruz. (yani buton oluşturuyoruz); butona başlık veriyoruz, style: enter a basıp nokta koyduktan sonra default u seçtik (buton görünümü bu), handler (butona basılınca bir şey yapılsın istiyor musun?) nil yaparsak bir şey yapmaz, enter a basınca UIAlertAction diye bir yer açılır ve altına yapılmasını istediğiniz kodu yazabilirsiniz
        
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked, uyarı mesajının içindeki butona basınca yapılmasını istediğimiz kodu buraya yazıyoruz
            print("Butona tıklandı")
        }
        allert.addAction(okButton) // oluşturduğumuz aksiyonu okButton olarak hata mesajına ekledik
        
//        self viewController a referans veriyor. self.present (bir şeyi göster demek). alert i göstermesi için belirtiyoruz, animasyon göstermesi için true yapıyoruz, completion (mesaj gösterildikten sonra bir işlem yapılmasını istiyor musun) istemediğimiz için nil yaptık
        
        self.present(allert, animated: true, completion: nil)
         
         */
        
//        Kullanıcı Ekranında Kullanıcı Bilgilerinin Girilip Girilmediğinin if ile Kontrolü
      /*
        if usernameText.text == "" && passwordText.text == "" { // Kullanıcı adı ve şifre boşsa
            
            let allert2 = UIAlertController(title: "Hata", message: "Kullanıcı adı ve şifre girilmedi!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            allert2.addAction(okButton)
            self.present(allert2, animated: true, completion: nil)
            
        } else if passwordText.text == "" { // eğer şifre boşsa aşağıdaki uyarı mesajını göster
         
            let allert2 = UIAlertController(title: "Hata", message: "Şifre girilmedi!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            allert2.addAction(okButton)
            self.present(allert2, animated: true, completion: nil)
            
        } else if usernameText.text == "" { // eğer kullanıcı adı boşsa aşağıdaki uyarı mesajını göster
            
            let allert2 = UIAlertController(title: "Hata", message: "Kullanıcı adı girilmedi!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            allert2.addAction(okButton)
            self.present(allert2, animated: true, completion: nil)
            
        } else if passwordText.text != password2Text.text { // şifre ve tekrar girilen şifre aynı değilse
            
            let allert2 = UIAlertController(title: "Hata", message: "Şifre ikinci şifrre ile aynı olmalı!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            allert2.addAction(okButton)
            self.present(allert2, animated: true, completion: nil)
            
        } else { // Eğer kullanıcı adı şifre ve şifre tekrarı yazıldıysa
            
            let allert2 = UIAlertController(title: "Başarılı", message: "Kullanıcı Girişi Yapıldı!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            allert2.addAction(okButton)
            self.present(allert2, animated: true, completion: nil)
            
        }
       */
        
//      Kullanıcı Ekranında Kullanıcı Bilgilerinin Girilip Girilmediğinin func (fonksiyon yazarak kontrolü) ile Kontrolü
        
        if usernameText.text == "" && passwordText.text == "" { // Kullanıcı adı ve şifre boşsa
            
            makeAlert(titleInput: "Hata", messageInput: "Kullanıcı Adı ve Şifre Girilmedi!")
            
        } else if passwordText.text == "" { // eğer şifre boşsa aşağıdaki uyarı mesajını göster
         
            makeAlert(titleInput: "Hata", messageInput: "Şifre Girilmedi!")
            
        } else if usernameText.text == "" { // eğer kullanıcı adı boşsa aşağıdaki uyarı mesajını göster
            
            makeAlert(titleInput: "Hata", messageInput: "Kullanıcı Adı Girilmedi!")
            
        } else if passwordText.text != password2Text.text { // şifre ve tekrar girilen şifre aynı değilse
            
            makeAlert(titleInput: "Hata", messageInput: "Şifre İkinci Şifre İle Aynı Olmalı!")
            
        } else { // Eğer kullanıcı adı şifre ve şifre tekrarı yazıldıysa
            
            makeAlert(titleInput: "Başarılı", messageInput: "Kullanıcı Girişi Yapıldı!")
            
        }
        
    }
    
    func makeAlert(titleInput: String, messageInput: String) { // fonksiyonu yazdık, girilecek olan başlığı ve mesajı belirttik
        
        let allert2 = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        allert2.addAction(okButton)
        self.present(allert2, animated: true, completion: nil)
        
    }
    
}

