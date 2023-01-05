import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate:LoginScreenProtocol?
    
    public func delegate(delegate:LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 45, weight: .bold)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Email: user@outlook.com"
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.placeholder = "Digite sua senha"
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar no App", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton() {
        delegate?.tappedLoginButton()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addViews()
        configConstraintsLoginLabel()
        configConstraintsEmailTextField()
        configConstraintsPasswordTextField()
        configConstraintsLoginButton()
    }
    
    private func addViews() {
        addSubview(loginLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
//            loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
//            loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
//            emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 30),
//            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
//            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
//
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
//            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor)
        ])
    }
    
    // offset = valor positivo do constant
    // inset = valor negativo do constant
    
    private func configConstraintsLoginLabel() {
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }
    }

    private func configConstraintsEmailTextField() {
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }

    private func configConstraintsPasswordTextField() {
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(15)
            make.leading.equalTo(emailTextField.snp.leading)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.height.equalTo(emailTextField.snp.height)
        }
    }

    private func configConstraintsLoginButton() {
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.leading.equalTo(emailTextField.snp.leading)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
    
}
