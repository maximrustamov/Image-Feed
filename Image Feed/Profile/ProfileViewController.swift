import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView()
        
    }
    
    private func profileView() {
        
        let profileImage = UIImage(named: "avatar")
        let imageView = UIImageView(image: profileImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 76).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        let labelName = UILabel()
        labelName.text = "Екатерина Новикова"
        labelName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelName)
        labelName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
        labelName.textColor = .white
        labelName.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
        self.label = labelName
        
        
        let labelSocial = UILabel()
        labelSocial.text = "@ekaterina_nov"
        labelSocial.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelSocial)
        labelSocial.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        labelSocial.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8).isActive = true
        labelSocial.textColor = UIColor(named: "YP Grey")
        labelSocial.font = UIFont.systemFont(ofSize: 13.0, weight: .regular)
        self.label = labelName
        
        let labelText = UILabel()
        labelText.text = "Hello, world!"
        labelText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelText)
        labelText.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        labelText.topAnchor.constraint(equalTo: labelSocial.bottomAnchor, constant: 8).isActive = true
        labelText.textColor = .white
        labelText.font = UIFont.systemFont(ofSize: 13.0, weight: .regular)
        self.label = labelText
        
        
        let buttonView = UIView()
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold))!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        
        button.tintColor = UIColor(named: "YP Red")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(buttonView)
        buttonView.addSubview(button)
        
        buttonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        buttonView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        buttonView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        buttonView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        button.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor, constant: 16).isActive = true
        button.centerYAnchor.constraint(equalTo: buttonView.centerYAnchor).isActive = true
    }
    
    @objc func didTapButton() {
        
        label?.removeFromSuperview()
        label = nil
        
        for view in view.subviews {
            if view is UILabel {
                view.removeFromSuperview()
            }
        }
    }
    
}
