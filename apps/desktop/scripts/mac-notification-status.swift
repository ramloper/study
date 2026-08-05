import Foundation
import UserNotifications

let semaphore = DispatchSemaphore(value: 0)
var statusStr = "unknown"
var alertStr = "unknown"
var soundStr = "unknown"

UNUserNotificationCenter.current().getNotificationSettings { settings in
  switch settings.authorizationStatus {
  case .notDetermined: statusStr = "not-determined"
  case .denied: statusStr = "denied"
  case .authorized: statusStr = "authorized"
  case .provisional: statusStr = "provisional"
  case .ephemeral: statusStr = "ephemeral"
  @unknown default: statusStr = "unknown"
  }

  switch settings.alertSetting {
  case .enabled: alertStr = "enabled"
  case .disabled: alertStr = "disabled"
  case .notSupported: alertStr = "not-supported"
  @unknown default: alertStr = "unknown"
  }

  switch settings.soundSetting {
  case .enabled: soundStr = "enabled"
  case .disabled: soundStr = "disabled"
  case .notSupported: soundStr = "not-supported"
  @unknown default: soundStr = "unknown"
  }

  semaphore.signal()
}

_ = semaphore.wait(timeout: .now() + 3.0)
// machine-readable
print("\(statusStr)|\(alertStr)|\(soundStr)")
