import Image_Feed
import UIKit
import Kingfisher

final class ProfileViewControllerSpy: UIViewController, ProfileViewControllerProtocol {
    
    var presenter: Image_Feed.ProfileViewPresenterProtocol?

    func configure(_ presenter: ProfileViewPresenterProtocol) {
        self.presenter = presenter
        self.presenter?.view = self
    }
    
    
    func updateAvatar() {
      
    }
    
    private func updateProfileDetails() {
          }
    
    @objc
    private func didTapLogoutButton() {
       
    }
 
    func switchToSplashViewController() {
        }
    
    func showAlert() {
        presenter?.logout()
    }
}

