import Foundation
import UserNotifications

func waitWithRunLoop(timeout: TimeInterval, until done: () -> Bool) {
  let deadline = Date().addingTimeInterval(timeout)
  while !done() && Date() < deadline {
    RunLoop.current.run(mode: .default, before: Date().addingTimeInterval(0.01))
  }
}

/// 0 notDetermined, 1 denied, 2 authorized, 3 provisional, 4 ephemeral, -1 unknown
@_cdecl("study_get_notification_auth")
public func study_get_notification_auth() -> Int32 {
  var result: Int32 = -1
  var finished = false
  UNUserNotificationCenter.current().getNotificationSettings { settings in
    switch settings.authorizationStatus {
    case .notDetermined: result = 0
    case .denied: result = 1
    case .authorized: result = 2
    case .provisional: result = 3
    case .ephemeral: result = 4
    @unknown default: result = -1
    }
    finished = true
  }
  waitWithRunLoop(timeout: 2.0) { finished }
  return result
}

/// 1 enabled, 0 disabled, -1 unknown
@_cdecl("study_get_notification_alert")
public func study_get_notification_alert() -> Int32 {
  var result: Int32 = -1
  var finished = false
  UNUserNotificationCenter.current().getNotificationSettings { settings in
    switch settings.alertSetting {
    case .enabled: result = 1
    case .disabled: result = 0
    case .notSupported: result = -1
    @unknown default: result = -1
    }
    finished = true
  }
  waitWithRunLoop(timeout: 2.0) { finished }
  return result
}
