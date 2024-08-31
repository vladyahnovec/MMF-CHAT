//
//  valid.swift
//  MMF
//
//  Created by Круглич Влад on 2.04.24.
//

import Foundation

func checkValid(email: String, password: String, errorCheck: Bool) -> String {
    if (email == "" && password != "") {
        return "Введите правильный email"
    }
    else if (password == "" && email != "") {
        return "Введите правильный пароль"
    }
    else if (email == "" && password == "") {
        return "Заполните все поля"
    }
    else if (!email.contains("@")) {
        return "Введите правильный email"
    }
    else if (password.count < 6) {
        return "Пароль должен содержать больше 6 символов"
    }
    else
    {
        if errorCheck {
            return "email или пароль недействительны"
        }
        else {
            return "Пользователь с таким email уже существует"
        }
    }
}
