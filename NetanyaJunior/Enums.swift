//
//  Enums.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 11.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//


// enum for errors. New in Swift 2.0 enum as ErrorType
enum Error: ErrorType {
    case EmptyField
    case PasswordsDoNotMatch
    case InvalidEmail
    case UserNameTaken
    case IncorrectSignIn
    case InvalidPassword
}

// use extension to add text to our errors so we can display it through our errorLabel.
extension Error: CustomStringConvertible {
    var description: String {
        switch self {
        case .EmptyField: return "אנא מלא את כל השדות"
        case .PasswordsDoNotMatch: return "הסיסמאות אינם תואמות"
        case .InvalidEmail: return "אנא הקלד אימייל חוקי"
        case .UserNameTaken: return "שם המשתמש כבר תפוס..."
        case .IncorrectSignIn: return "שם המשתמש או הסיסמא אינם נכונים"
        case .InvalidPassword: return "חובה להשתמש ב8 תויים באנגלית, תו גדול באנגלית וספרה אחת לפחות"
        }
    }
}
