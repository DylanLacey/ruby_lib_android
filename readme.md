ruby_lib_android
=====================

ruby_lib's Android tests. Requires `Ruby 1.9.3` or better.

- `rake install` Install gems required to run the tests.
- `rake android` Run all tests.
- `rake android['android/element/generic']` Run a single test.
- `arc` Opens the Appium Ruby Console (arc). Enables interactive testing.
  - `gem install appium_console` if it's not installed already.

api.apk is from [appium/android-apidemos](https://github.com/appium/android-apidemos)

#### Documentation

- [Installing Appium on OS X](https://github.com/appium/ruby_console/blob/master/osx.md)
- [Overview](https://github.com/appium/ruby_lib/blob/master/docs/docs.md) 
- [Android methods](https://github.com/appium/ruby_lib/blob/master/docs/android_docs.md)

--

```java
Finished in 1 min 13 secs
90 tests, 113 assertions
```
