/*
* Copyright (c) 2014 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit
import CoreData

class LoginViewController: UIViewController {
  
  var managedObjectContext: NSManagedObjectContext? = nil
    
    let MyKeychainWrapper = KeychainWrapper()
    let createLoginButtonTag = 0
    let loginButtonTag = 1

    @IBOutlet weak var loginButton: UIButton!
    
  
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var createInfoLabel: UILabel!  

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // MARK: - Action for checking username/password
  @IBAction func loginAction(sender: AnyObject) {
    
    if checkLogin(self.usernameTextField.text!, password: self.passwordTextField.text!) {
        self.performSegueWithIdentifier("dismissLogin", sender: self)

    }
    

  }
    
    func checkLogin(username: String, password: String) -> Bool {
        if ((username == usernameKey) && (password == passwordKey)) {
            return true
        }else{
            return false
        }
    }
  
  
  
}
