# MFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification Test

Just a simple test app to try and work out why this notification exists.

See this Stack Overflow post for details:
http://stackoverflow.com/questions/8967186/reasons-for-mfmessagecomposeviewcontrollertextmessageavailabilitydidchangenotifi

TL;DR: I haven't ever received this notification, even in the rare cases where canSendText does change. Looks like a bug somewhere (in either my simple test code or Apple's)

