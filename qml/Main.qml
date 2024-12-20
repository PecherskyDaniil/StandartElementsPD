import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
        visible:true
        width: 300
        height: 450
        TextField {
         id: usernameField
         placeholderText: "Username"
         font.pixelSize: 16
         anchors.bottom: parent.verticalCenter
         anchors.horizontalCenter: parent.horizontalCenter
        }
         TextField {
         id: passwordField
         placeholderText: "Password"
         font.pixelSize: 16
         echoMode: TextInput.Password
         anchors.topMargin: 20
         anchors.top: usernameField.bottom
         anchors.horizontalCenter: parent.horizontalCenter
        }
        Button{
            anchors.topMargin: 20
            anchors.top: passwordField.bottom
            anchors.left: parent.horizontalCenter
            anchors.leftMargin: 10
            text:"Clear"
            background: Qt.rgba(0,0,0,1)
            onClicked: {
                usernameField.text = ""
                passwordField.text = ""
            }
        }
        Button{
            anchors.topMargin: 20
            anchors.top: passwordField.bottom
            anchors.right: parent.horizontalCenter
            anchors.leftMargin: 10
            text:"Login"
            onClicked: {
            }
        }

    }
    Window{
        visible:true
        Text {
         text: "Enter your password:"
         font.pixelSize: 16
         Layout.alignment: Qt.AlignCenter
         }
         Rectangle {
         id: passwordField1
         color: "white"
         border.width: 2
         border.color: "black"
         width: parent.width
         height: 50
         Layout.alignment: Qt.AlignCenter
         Row {
         spacing: 6
         anchors.centerIn: parent
         // Добавляем 6 элементов Label для отображения введенных символов
         Repeater {
         model:6
         Label {
         width: 20
         height: 20
         font.pixelSize: 36
         text:  "*"
         Layout.alignment: Qt.AlignCenter
         color:index<passwordField.text.length? "black" : "light grey"
         }
         }
         }
         }
         GridLayout {
            anchors.top:passwordField1.bottom
          id: keypad
          rows: 4
          columns: 3
          width: parent.width
          Button {
          text: "1"
          onClicked: passwordField.text += "1"
          }
          Button {
          text: "2"
          onClicked: passwordField.text+= "2"
          }
          Button {
          text: "3"
          onClicked: passwordField.text+= "3"
          }
          Button {
          text: "4"
          onClicked: passwordField.text+= "4"
          }
          Button {
          text: "5"
          onClicked: passwordField.text+= "5"
          }
          Button {
          text: "6"
          onClicked: passwordField.text+= "6"
          }
          Button {
          text: "7"
          onClicked: passwordField.text+= "7"
          }
          Button {
          text: "8"
          onClicked: passwordField.text+= "8"
          }
          Button {
          text: "9"
          onClicked: passwordField.text+= "9"
          }
          Button {
          text: ""
          }
          Button {
          text: "0"
          onClicked: passwordField.text+= "0"
          }
          Button {
          text: "Clear"
          onClicked: passwordField.text= ""
          }
         }
    }
}
