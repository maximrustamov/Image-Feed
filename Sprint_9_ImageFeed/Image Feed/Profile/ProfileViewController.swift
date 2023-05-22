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
        labelSocial.textColor = .gray
        labelSocial.font = UIFont.systemFont(ofSize: 13.0, weight: .regular)
        self.label = labelName
        
        
        
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold))!,
            target: self,
            action: #selector(Self.didTapButton)
        )
        
        button.tintColor = UIColor(named: "YP Red")
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        
        
       
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
