import SnapKit
import UIKit

class LoginViewController: UIViewController {
    
    var appImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "spotify")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    var forgotPassword: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.font = UIFont(name: "Lusitana-Regular", size: 18.0)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    var emailInputField: UITextField = {
        let email = UITextField()
        let hint = NSAttributedString(string: "Email address or Phone number", attributes: [
            .font: UIFont(name: "Lusitana-Bold", size: 18.0)!,
            .foregroundColor: UIColor.darkGray
        ])
        email.attributedPlaceholder = hint
        email.textAlignment = .center
        email.tintColor = .black
        email.textColor = .black
        email.backgroundColor = .white
        email.layer.cornerRadius = 25
        return email
    }()

    var passwordInputField: UITextField = {
        let password = UITextField()
        let hint = NSAttributedString(string: "Password", attributes: [
            .font: UIFont(name: "Lusitana-Bold", size: 18.0)!,
            .foregroundColor: UIColor.darkGray
        ])
        password.attributedPlaceholder = hint
        password.textAlignment = .center
        password.tintColor = .black
        password.textColor = .black
        password.backgroundColor = .white
        password.layer.cornerRadius = 25
        return password
    }()
    
    var loginButton: UIButton = {
        let button = UIButton(type: .custom)
        let attButton = NSAttributedString(string: "LOG IN", attributes: [
            .font: UIFont(name: "Lusitana-Bold", size: 18.0)!,
            .foregroundColor: UIColor.white,
            .kern: 0
        ])
        button.setAttributedTitle(attButton, for: .normal)
        button.backgroundColor = .systemGreen
        button.tintColor = .white
        button.layer.cornerRadius = 25
        return button
    }()
    
    var descriptLabel: UILabel = {
        let label = UILabel()
        label.text = "or continue with"
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Lusitana-Regular", size: 20.0)
        return label
    }()
    
    var loginAsAppleID: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "apple.logo"), for: .normal)
        return button
    }()
    
    var loginAsGoogleID: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "google"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    private func setupUI() {
        
        view.addSubview(appImage)
        appImage.snp.makeConstraints { make in
            make.width.equalTo(190)
            make.height.equalTo(55)
            make.centerX.equalToSuperview()
            make.top.equalTo(120)
        }
        
        view.addSubview(emailInputField)
        emailInputField.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(appImage).offset(100)
        }
        
        view.addSubview(passwordInputField)
        passwordInputField.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(emailInputField).offset(60)
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordInputField).offset(60)
        }
        
        view.addSubview(descriptLabel)
        descriptLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.top.equalTo(loginButton).offset(110)
        }
        
        view.addSubview(loginAsAppleID)
        loginAsAppleID.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(35)
            make.centerX.equalToSuperview().offset(-10)
            make.top.equalTo(descriptLabel).offset(30)
        }
        
        view.addSubview(loginAsGoogleID)
        loginAsGoogleID.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalTo(descriptLabel).offset(23)
            make.centerX.equalToSuperview().offset(30)
        }
        
        view.addSubview(forgotPassword)
        forgotPassword.snp.makeConstraints { make in
            make.width.equalTo(120)
            make.height.equalTo(20)
            make.centerX.equalToSuperview()
            make.trailing.bottom.equalToSuperview().offset(-50)
        }
    }

}
