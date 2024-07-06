//
//  ContentView.swift
//  Kadai1
//
//  Created by 弓削　敦信 on 2024/07/06.
//

import SwiftUI

struct ContentView: View {
    @State private var inputNumber1  = ""
    @State private var inputNumber2  = ""
    @State private var inputNumber3  = ""
    @State private var inputNumber4  = ""
    @State private var inputNumber5  = ""

    @State private var totalNumber: Int = 0


    var body: some View {
        VStack {
            TextField("数字を入力してください", text: $inputNumber1).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber2).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber3).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber4).textFieldStyle(.roundedBorder)
            TextField("数字を入力してください", text: $inputNumber5).textFieldStyle(.roundedBorder)
            HStack {
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                totalNumber = add(number1: Int(inputNumber1) ?? 0, number2: Int(inputNumber2) ?? 0, number3: Int(inputNumber3) ?? 0, number4: Int(inputNumber4) ?? 0, number5: Int(inputNumber5) ?? 0)
                }
                Spacer()
            }
            HStack {
                // Labelにタイトルだけ表示
                Label(String(totalNumber), systemImage: "bolt.fill")
                    .labelStyle(.titleOnly)
                Spacer()
            }
        }
        .padding()
        Spacer()
    }
}

/* 下記エラーになるため、メソッドで処理を分割:
 The compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expression
 */
func add(number1: Int, number2: Int, number3: Int, number4: Int, number5: Int) -> Int {
    return number1 + number2 + number3 + number4 + number5
}

#Preview {
    ContentView()
}
