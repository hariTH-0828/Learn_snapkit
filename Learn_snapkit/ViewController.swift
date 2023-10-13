import SnapKit
import UIKit

class ViewController: UIViewController {

    var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "WELCOME!"
        label.font = UIFont(name: "Lusitana-Bold", size: 32.0)
        return label
    }()
    
    var appName: UILabel = {
        let label = UILabel()
        label.text = "SPOTIFY"
        label.font = UIFont(name: "Lusitana-Bold", size: 24.0)
        return label
    }()
    
    var appImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "spotify_logo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    var quoteLabel: UILabel = {
        let label = UILabel()
        label.text = "We play the music,\nYou enjoy it. Deal?"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Lusitana-Bold", size: 26.0)
        return label
    }()
    
    var loginButton: UIButton = {
        let button = UIButton(type: .custom)
        let attButton = NSAttributedString(string: "Login", attributes: [
            .font: UIFont(name: "Lusitana-Bold", size: 24.0)!,
            .foregroundColor: UIColor.white,
            .kern: 0
        ])
        button.setAttributedTitle(attButton, for: .normal)
        button.backgroundColor = .systemGreen
        button.tintColor = .white
        button.layer.cornerRadius = 10
        return button
    }()
    
    var signupButton: UIButton = {
        let button = UIButton()
        let attButton = NSAttributedString(string: "Sign up", attributes: [
            .font: UIFont(name: "Lusitana-Bold", size: 24.0)!,
            .foregroundColor: UIColor.black,
            .kern: 0
        ])
        button.setAttributedTitle(attButton, for: .normal)
        button.backgroundColor = .white
        
        button.tintColor = .black
        button.layer.cornerRadius = 10
        return button
    }()
    
    var descriptLabel: UILabel = {
        let label = UILabel()
        label.text = "By clicking on Sign up, You agree to Spotify Terms and Conditions of use"
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Lusitana-Regular", size: 20.0)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self,
                              action: #selector(loginDidTap),
                              for: .touchUpInside)
        
        signupButton.addTarget(self,
                              action: #selector(signupDidTap),
                              for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    @objc private func loginDidTap() {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    @objc private func signupDidTap() {
        navigationController?.pushViewController(SignupViewController(), animated: true)
    }
    
    private func setupUI() {
        view.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.leading.left.equalToSuperview().offset(40)
            make.leading.top.equalToSuperview().offset(60)
        }
        
        view.addSubview(appName)
        appName.snp.makeConstraints { make in
            make.left.equalTo(welcomeLabel.snp.left)
            make.top.equalTo(welcomeLabel.snp.bottom)
        }
        
        view.addSubview(appImage)
        appImage.snp.makeConstraints{ make in
            make.width.equalTo(150)
            make.height.equalTo(150)
            make.centerX.equalToSuperview()
            make.top.equalTo(appName.snp.bottom).offset(50)
        }
        
        view.addSubview(quoteLabel)
        quoteLabel.snp.makeConstraints { make in
            make.leading.left.equalTo(30)
            make.trailing.right.equalTo(-30)
            make.centerX.equalToSuperview()
            make.top.equalTo(appImage.snp.bottom)
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(quoteLabel).offset(100)
        }

        view.addSubview(signupButton)
        signupButton.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.top.equalTo(loginButton).offset(60)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(descriptLabel)
        descriptLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-40)
        }
    }


}

