import Foundation

enum Status {
    case needReg
    case needLogin
    case online
    case logout
    case baned
}

let patrik = UserInfo(name: "Patryk", password: "12345", rang: .regular, status: .needReg)
let illia = UserInfo(name: "Illia", password: "12345", rang: .regular, status: .needReg)
let alex = UserInfo(name: "Alex", password: "12345", rang: .regular, status: .needReg)
let andrew = UserInfo(name: "Andrew", password: "12345", rang: .regular, status: .needReg)
let anton = UserInfo(name: "Anton", password: "12345", rang: .regular, status: .needReg)

let arrayKlientov = [patrik, illia, alex, andrew, anton]

enum Rang {
    case admin
    case regular
}

struct UserInfo {
    var name, password: String
    var rang: Rang
    var status: Status
}

struct BettingSystem {
    var userList: [UserInfo] = []
        
    mutating func registration(userInfo: UserInfo) {
        if let user = userList.first(where: { $0.name == userInfo.name }) {
            print("you want to sign up as: \(userInfo.name), unfortunately this nickname already exists")
        } else {
            var user = userInfo
            user.status = .needLogin
            userList.append(user)
        }
    }
    mutating func login(userInfo: UserInfo) {
        if let index = userList.firstIndex(where: { $0.name == userInfo.name && $0.status == .needLogin && $0.status != .baned }) {
            print("login_success")
            userList[index].status = .online
        } else {
            print("your nickname is \(userInfo.name) unfortunately you are baned and you can`t login")
        }
    }
    
    mutating func logout(userInfo: UserInfo) {
        if var index = userList.firstIndex(where: { $0.name == userInfo.name && $0.status == .online && $0.status != .baned }) {
            print("logout_sucess")
            userList[index].status = .logout
        }  else {
            print("your nickname is \(userInfo.name) unfortunately you are baned and you can`t logout")
        }

    }
    var dictBet: [String : [String]] = [:]
    
    func myBets(userList: UserInfo) {
        for value in dictBet.values{
            print(value)
        }
    }
    mutating func bet(userinfo: UserInfo, beta: [String]) {
        if var index = userList.firstIndex(where: { $0.status == .online }) {
            dictBet.updateValue(beta, forKey: userinfo.name)
        } else {
                print("something went wrong")
        }
    }
    func listForAdmin(userList: UserInfo){
        print(userList.name)
    }
}
