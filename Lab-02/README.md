# Workshop - Robot Framework

# Lab-02 - Keywords and Reusability

## Goal
Create more organised and reusable tests. Using the same test case, let's now make our code modular and reusable.

Usefull Keywords: POM (Page Object Model), Reusabity, Modular Code


## Useful documentation

- [Python Documentation](https://docs.python.org/3/reference/index.html)
- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)


## Steps

### 1. Learn more about the following topics
1. POM (Page Object Model)
2. Reusabity
3. Modular Code
4. Best practices 

### 2. Applies the knowledge gained, converting the first test case into a more modular one.
1. Creates a keyword file in the resource folder. ```first_keyword.resource```
2. Follows the structure below:
   ```
   *** Settings ***
      Documentation     Keyword file Description

   *** Keywords ***
   Keyword Name
      [Documentation]   Keywords Description
      
      Step 1
    ```


### 3. Change the first test to use the keyword you created.
1. Import the resource file
   ```
   Resource          ../resources/first_keyword.resource
   ```
2. Change first step:
   ```
   Log First Message
   ```


## Running Tests
Run all tests in the `tests` folder:
```pwsh
robot tests
```
