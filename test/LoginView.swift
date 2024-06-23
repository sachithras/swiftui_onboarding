//
//  LoginView.swift
//  test
//
//  Created by Sachithra Udayanga on 22/6/24.
//

import SwiftUI

struct LoginView: View {
    @State private var emailInput: String = ""
    @State private var passwordInput: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image("login_image")
                    .padding(.leading, 22)
                    .padding(.trailing, 22)
                Text("Let's Start!")
                    .font(.custom("AvenirNext-Bold", size: 39))
                    .foregroundColor(Color("primary_text_color"))
                    .padding(.bottom, 30)
                Spacer()
                VStack {
                    CustomTextField(
                                    text: $emailInput,
                                    placeholder: "Email",
                                    placeholderColor: .gray,
                                    height: 60,
                                    backgroundColor: UIColor(named: "primary_textfield_color"),
                                    font: UIFont(name: "AvenirNext-Bold", size: 14)
                                )
                    .frame(height: 60)
                    .padding(.bottom, 15)
                    ZStack {
                        CustomTextField(
                                        text: $passwordInput,
                                        placeholder: "Password",
                                        placeholderColor: .gray,
                                        height: 60,
                                        backgroundColor: UIColor(named: "primary_textfield_color"),
                                        font: UIFont(name: "AvenirNext-Bold", size: 14)
                                    )
                        .frame(height: 60)
                        Image("view_password_icon").offset(x: UIScreen.main.bounds.width / 2 - 42, y: 0)
                    }
                }.padding(.leading, 22)
                    .padding(.trailing, 22)
                Button(action: {
                    
                }) {
                    Text("Sign in")
                        .frame(width: 126, height: 58)
                        .font(.custom("AvenirNext-Heavy", size: 18))
                        .foregroundColor(Color("primary_button_text_color"))
                        .background(Color("primary_button_color"))
                        .cornerRadius(8)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                }
                
                HStack {
                    Text("Don't have an account?").foregroundColor(Color("secondary_text_color"))
                    Button(action: {
                        print("Sign up tapped")
                    }) {
                        Text("Sign up")
                            .foregroundColor(Color("inline_signup_text_color"))
                            .bold()
                            .padding(.horizontal, 0)
                    }
                    .buttonStyle(PlainButtonStyle())
                }.font(.custom("AvenirNext-Heavy", size: 15))
                .padding()
                
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Color("primary_background_color"))
    }
}

#Preview {
    LoginView()
}

struct CustomTextField: UIViewRepresentable {
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: CustomTextField

        init(parent: CustomTextField) {
            self.parent = parent
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            parent.text = textField.text ?? ""
        }
    }

    @Binding var text: String
    var placeholder: String
    var placeholderColor: UIColor
    var height: CGFloat
    var backgroundColor: UIColor?
    var font: UIFont?

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.delegate = context.coordinator
        textField.placeholder = placeholder
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.backgroundColor = backgroundColor
        textField.font = font ?? UIFont.systemFont(ofSize: 16)
        
        let placeholderAttributedString = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: placeholderColor]
        )
        textField.attributedPlaceholder = placeholderAttributedString

        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
}
