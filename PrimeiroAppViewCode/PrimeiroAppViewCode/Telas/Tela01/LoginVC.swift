import UIKit

class LoginVC: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
        screen?.emailTextField.text = Utils.getUserDefaults(key: "email") as? String
        screen?.passwordTextField.text = Utils.getUserDefaults(key: "password") as? String
    }


}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        Utils.saveUserDefaults(value: screen?.emailTextField.text ?? "", key: "email")
        Utils.saveUserDefaults(value: screen?.passwordTextField.text ?? "", key: "password")
        
        let vc:Tela02ViewController = Tela02ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
