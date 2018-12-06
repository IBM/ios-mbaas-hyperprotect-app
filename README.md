[![](https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg)](https://bluemix.net)
[![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)](https://developer.apple.com/swift/)

# Create an enterprise-ready iOS application with a secure backend for push notifications, data storage, and authentication

In this code pattern, you will create an enterprise-ready mobile backend as a service (MBaaS) using Swift and Hyper Protect Services. Hyper Protect Services bring continuous security to IBM Cloud, so all data is encrypted in flight, at rest, and in use. You'll essentially have an empty project with more data security than your typical MBaaS would, including highly secure push notifications, data storage, and authentication.

When you have completed this code pattern, you will understand how to:

* Build an iOS application
* Provision and integrate with Push Notifications and Hyper Protect Crypto Services
* Connect to additional IBM Cloud services

## Steps

> As an alternative to the steps below, you can [create this project as a starter kit](https://console.bluemix.net/developer/appledevelopment/create-app?defaultDeploymentToolchain=&defaultLanguage=IOS_SWIFT&env_id=ibm%3Ayp%3Aus-south&navMode=catalog&starterKit=bee074e4-a6c7-3cfd-b131-8d302942ee0a) on IBM Cloud, which automatically provisions required services, and injects service credentials into a custom fork of this pattern. Then, you can skip directly to step [TODO] below.

## Requirements

* iOS 9.0+
* Xcode 9.0
* Swift 4.0

## IBM Cloud Mobile services Dependency Management

The IBM Cloud Mobile services SDK uses [CocoaPods](https://cocoapods.org/) to manage and configure dependencies.

You can install CocoaPods using the following command:

```bash
$ sudo gem install cocoapods
```

If the CocoaPods repository is not configured, run the following command:

```bash
$ pod setup
```

For this starter, a pre-configured `Podfile` has been included. To download and install the required dependencies, run the following command in your project directory:

```bash
$ pod install
```
Open the Xcode workspace: `{APP_Name}.xcworkspace`. Continue to open the `.xcworkspace` file as it contains all the dependencies and configurations.

If you run into any issues during the pod install, it is recommended to run a pod update by using the following commands:

```bash
$ pod update
$ pod install
```

## Run

Click **Product > Run** to start the app in Xcode.  You will see a screen like this:

![Empty App Screenshot](README_Images/basic_home_screen.png)

The application has built in integration points  Push Notifications, Data, Storage and Authentication services.

## License

[Apache 2.0](LICENSE)
