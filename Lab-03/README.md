# Workshop - Robot Framework

# Lab-03 - Libraries and Extensions

## Goal
Expand functionalities using libraries. In this Lab, we will use the Selenium library for WEB testing.

## Useful documentation

- [Python Documentation](https://docs.python.org/3/reference/index.html)
- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)


## Steps

### 1. Setup
1. Install the following libraries
   ```pwsh
   # Selenium Library
   pip install robotframework-seleniumlibrary

   # Webdriver Manager
   pip install webdrivermanager
   ```

### 2. Explore Web portal 

1. Visit the Website ``` http://10.255.0.150:32022/ ```
2. Reproduce all the steps to login with admin credentials


### 3. Implement the necessary steps to perform the login
1.  Creates a keyword file in the resource folder for Login test case. ```login_keywordd.resource```
2.  Implement a new keyword for each step
    1.  Should be imported SeleniumLibrary
    2.  A section of variables should be created for the selectors (you can use XPATH or CSS)

### 4. Create a new test file and implement the login test case
1. Create a Suite file ```lab3_test.robot```
2. Implement the test case


## Running Tests
Run all tests in the `tests` folder:
```pwsh
robot tests
```
