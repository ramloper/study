import Foundation
import UserNotifications

let semaphore = DispatchSemaphore(value: 0)
var ok = false

UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
  ok = granted
  semaphore.signal()
}

_ = semaphore.wait(timeout: .now() + 30.0)
print(ok ? "granted" : "denied")
