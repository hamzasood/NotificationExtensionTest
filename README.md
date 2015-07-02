# NotificationExtensionTest

An example of how to use an undocumented extension point to provide custom UI in a notification banner on OS X (pretty sure it's new in 10.11)

App extensions with an extension point of "com.apple.notification-extension" can provide a view controller to display in a banner. Just add "__ncNotificationExtensionIdentifier" to the userInfo dictionary of the NSUserNotification, with the value being the bundle identifier of the app extension you want to show.

Video: https://twitter.com/hamzasood/status/616718933760937984
