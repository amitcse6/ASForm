//
//  SignUpView.swift
//  superapp
//
//  Created by Amit on 23/6/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import Foundation
import ASValidator
import ASDropDown
import ASTextField

protocol SignUpViewDelegate {
}

class SignUpView: UIView {
    var delegate: SignUpViewDelegate?
    
    
    var storeBack: UIView?
    var container: UIView?
    var firstNameTextField: ASTextField?
    var lastNameTextField: ASTextField?
    var usernameTextField: ASTextField?
    var emailTextField: ASTextField?
    var passwordTextField: ASTextField?
    var phoneTextField: ASTextField?
    var countryTextField: ASTextField?
    var stateTextField: ASTextField?
    var cityTextField: ASTextField?
    var addressTextField: ASTextField?
    var zipCodeTextField: ASTextField?
    
    var PADDING: CGFloat = 4
    var BLACK_TITLE_COLOR = UIColor.black
    var FONT = UIFont.systemFont(ofSize: 15)
    var INPUT_FIELD_HRIGHT: CGFloat = 60
    var PASSWORD_MIN_LENGTH = 6
    
    var svalidator: ASValidator?
    
    var setDefaultText = true
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    func commonInit() {
        self.backgroundColor=UIColor.clear
        svalidator = ASValidator()
        
        storeBack = UIView()
        addSubview(self.storeBack.unsafelyUnwrapped)
        storeBack?.backgroundColor=UIColor.clear
        storeBack?.translatesAutoresizingMaskIntoConstraints = false
        storeBack?.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        storeBack?.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        storeBack?.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        storeBack?.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        container = UIView()
        storeBack?.addSubview(self.container.unsafelyUnwrapped)
        container?.backgroundColor=UIColor.clear
        container?.translatesAutoresizingMaskIntoConstraints = false
        container?.topAnchor.constraint(equalTo: self.storeBack.unsafelyUnwrapped.topAnchor, constant: PADDING).isActive = true
        container?.leftAnchor.constraint(equalTo: self.storeBack.unsafelyUnwrapped.leftAnchor, constant: PADDING).isActive = true
        container?.rightAnchor.constraint(equalTo: self.storeBack.unsafelyUnwrapped.rightAnchor, constant: -PADDING).isActive = true
        container?.bottomAnchor.constraint(equalTo: self.storeBack.unsafelyUnwrapped.bottomAnchor, constant: -PADDING).isActive = true
        
        
        // MARK: - First Name
        firstNameTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(firstNameTextField.unsafelyUnwrapped)
        firstNameTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("First Name", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "Rokib" : "")
        firstNameTextField?.register(svalidator, [ASVRequiredRule(), ASVMaxLengthRule(80)])
        firstNameTextField?.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField?.topAnchor.constraint(equalTo: container.unsafelyUnwrapped.topAnchor).isActive = true
        firstNameTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        firstNameTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        firstNameTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - Last Name
        lastNameTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(lastNameTextField.unsafelyUnwrapped)
        lastNameTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Last Name", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "Hasan" : "")
        lastNameTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        lastNameTextField?.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField?.topAnchor.constraint(equalTo: firstNameTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        lastNameTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        lastNameTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        lastNameTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - User Name
        usernameTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(usernameTextField.unsafelyUnwrapped)
        usernameTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("User Name", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "rokib" : "")
        usernameTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        usernameTextField?.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField?.topAnchor.constraint(equalTo: lastNameTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        usernameTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        usernameTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        usernameTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        
        // MARK: - Email
        emailTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(emailTextField.unsafelyUnwrapped)
        emailTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Email Address", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "rokib@gamil.com" : "")
        emailTextField?.register(svalidator, [ASVRequiredRule(), ASVMailRule()])
        emailTextField?.translatesAutoresizingMaskIntoConstraints = false
        emailTextField?.topAnchor.constraint(equalTo: usernameTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        emailTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        emailTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        emailTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - Password
        passwordTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(passwordTextField.unsafelyUnwrapped)
        passwordTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Password", true)
            .setSecureTextEntry(true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "11111111" : "")
        passwordTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(PASSWORD_MIN_LENGTH)])
        passwordTextField?.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField?.topAnchor.constraint(equalTo: emailTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        passwordTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        passwordTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        passwordTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - Phone
        phoneTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(phoneTextField.unsafelyUnwrapped)
        phoneTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setPhoneTextField(true)
            .setFont(FONT)
            .setName("Phone Number", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "+8801778888888" : "")
        phoneTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        phoneTextField?.translatesAutoresizingMaskIntoConstraints = false
        phoneTextField?.topAnchor.constraint(equalTo: passwordTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        phoneTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        phoneTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        phoneTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - Country
        countryTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(countryTextField.unsafelyUnwrapped)
        countryTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Country", true)
            .setDisableEditing()
            .setDropDown({index, object in
                let items = (0..<100).map({return ASDropDownItem(key: "Country\($0)", title: "Country\($0)")})
                ASDropDown.openDropDown(items, { [unowned self] (index: Int, item: String) in
                    self.countryTextField?.setText(item)
                    }, self.countryTextField?.getDropDownIcon(), nil)
            })
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "" : "")
        countryTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        countryTextField?.translatesAutoresizingMaskIntoConstraints = false
        countryTextField?.topAnchor.constraint(equalTo: phoneTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        countryTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        countryTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        countryTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        
        
        // MARK: - State
        // MARK: - Group -->
        stateTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(stateTextField.unsafelyUnwrapped)
        stateTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("State", true)
            .setDisableEditing()
            .setDropDown({index, object in
                let items = (0..<100).map({return ASDropDownItem(key: "State\($0)", title: "State\($0)")})
                ASDropDown.openDropDown(items, { [unowned self] (index: Int, item: String) in
                    self.stateTextField?.setText(item)
                    }, self.stateTextField?.getDropDownIcon(), nil)
            })
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "" : "")
        stateTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        stateTextField?.translatesAutoresizingMaskIntoConstraints = false
        stateTextField?.topAnchor.constraint(equalTo: countryTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        stateTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        stateTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        // MARK: - City
        cityTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(cityTextField.unsafelyUnwrapped)
        cityTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("City", true)
            .setDisableEditing()
            .setDropDown({index, object in
                let items = (0..<100).map({return ASDropDownItem(key: "City\($0)", title: "City\($0)")})
                ASDropDown.openDropDown(items, { [unowned self] (index: Int, item: String) in
                    self.cityTextField?.setText(item)
                    }, self.cityTextField?.getDropDownIcon(), nil)
            })
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "" : "")
        cityTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        cityTextField?.translatesAutoresizingMaskIntoConstraints = false
        cityTextField?.topAnchor.constraint(equalTo: countryTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        cityTextField?.leftAnchor.constraint(equalTo: stateTextField.unsafelyUnwrapped.rightAnchor).isActive = true
        cityTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        cityTextField?.widthAnchor.constraint(equalTo: stateTextField.unsafelyUnwrapped.widthAnchor).isActive = true
        cityTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        // MARK: - Group <--
        
        // MARK: - Address
        addressTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(addressTextField.unsafelyUnwrapped)
        addressTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Address", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "Dhaka" : "")
        addressTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        addressTextField?.translatesAutoresizingMaskIntoConstraints = false
        addressTextField?.topAnchor.constraint(equalTo: stateTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        addressTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        addressTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        addressTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
        
        
        // MARK: - Zip Code
        zipCodeTextField = ASTextFieldClassicStyle(self)
        container?.addSubview(zipCodeTextField.unsafelyUnwrapped)
        zipCodeTextField?
            .setTextColor(BLACK_TITLE_COLOR)
            .setFont(FONT)
            .setName("Zip Code", true)
            .setAutoEventAll(svalidator)
            .setText(setDefaultText ? "1421" : "")
        zipCodeTextField?.register(svalidator, [ASVRequiredRule(), ASVLengthRule(2)])
        zipCodeTextField?.translatesAutoresizingMaskIntoConstraints = false
        zipCodeTextField?.topAnchor.constraint(equalTo: addressTextField.unsafelyUnwrapped.bottomAnchor).isActive = true
        zipCodeTextField?.leftAnchor.constraint(equalTo: container.unsafelyUnwrapped.leftAnchor).isActive = true
        zipCodeTextField?.rightAnchor.constraint(equalTo: container.unsafelyUnwrapped.rightAnchor).isActive = true
        zipCodeTextField?.bottomAnchor.constraint(equalTo: container.unsafelyUnwrapped.bottomAnchor).isActive = true
        zipCodeTextField?.heightAnchor.constraint(equalToConstant: INPUT_FIELD_HRIGHT).isActive = true
    }
}

extension SignUpView: ASTextFieldDelegate {
}

extension ASTextField {
    func register(_ svalidator: ASValidator?, _ rules: [ASVRule]?, _ name: String? = nil, _ defaultErrorMsg: String? = nil) {
        getTextField()?.registerASVTF(
            svalidator: svalidator,
            field: getTextField(),
            name: name ?? getName(),
            errorLabel: getErrorLabel(),
            errorBorderView: getContainer(),
            errorBorderColor: UIColor.red.cgColor,
            normalBorderColor: getNormalBorderColor(),
            defaultErrorMsg: defaultErrorMsg,
            borderWidth: getBorderWidth(),
            rules: rules
        )
    }
}
