[![](https://img.shields.io/badge/bluemix-powered-blue.svg)](https://bluemix.net)
[![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)](https://developer.apple.com/swift/)

# Create an enterprise-ready iOS application with a secure backend for push notifications, data, storage, and authentication

Enterprise ready mobile Backend as a Service with Push Notifications, Data, Storage and Authentication.

### Table of Contents
* [Summary](#summary)
* [Requirements](#requirements)
* [Configuration](#configuration)
* [Run](#run)
* [License](#license)

### Summary

The Enterprise MBaaS mobile Swift starter kit is an empty project preconfigured with support for Push Notifications, Data, Storage and Authentication.

### Requirements

* iOS 9.0+
* Xcode 9.0
* Swift 4.0

### Configuration
* [IBM Cloud Mobile services Dependency Management](#ibm-cloud-mobile-services-dependency-management)
* [Mobile Foundation Configuration (Optional)](#mobile-foundation-configuration-optional)
* [AppLaunch Configuration (Optional)](#applaunch-configuration-optional)

#### IBM Cloud Mobile services Dependency Management

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

### Run

Click **Product > Run** to start the app in Xcode.  You will see a screen like this:

<img src="README_Images/basic_home_screen.png" alt="Empty App Screenshot" width="250px"/>

The application has built in integration points  Push Notifications, Data, Storage and Authentication services.

### License
This package contains code licensed under the Apache License, Version 2.0 (the "License"). You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and may also view the License in the LICENSE file within this package.
