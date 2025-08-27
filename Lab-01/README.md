# Workshop - Robot Framework

# Lab-01 - Preparation and Context

## Goal
Have the environment ready and understand the context of the Robot Framework.


## Useful documentation

- [Python Documentation](https://docs.python.org/3/reference/index.html)
- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)


## Steps

### 1. Setup
1. Install IDE (e.g. VS Code) with the proper extension.
2. Install Python (recommended: 3.8+)
   [Python](https://www.python.org/downloads/)
3. Install Robot Framework:
   ```pwsh
   pip install robotframework
   ```

### 2. Create a typical project folder and file structure
- `tests/`: Contains Robot Framework test suites.
- `resources/`: Contains resource files (keywords, variables).
- `library/`: This will be used for storing the custom libraries.
- `results/`: This directory will be used for saving the Test execution logs and results.


### 3. Create a simple "Hello World" test
1. Create a Suite file ```(first_test.robot)``` into the ```tests``` folder
2. Follows the structure below:
   ```
   *** Settings ***
      Documentation     Suite Description

   *** Test Cases ***
   Lab01 First Test
      [Documentation]   Test Description
      [Tags]    first
      
      Step 1
    ```


## Running Tests
Run all tests in the `tests` folder:
```pwsh
robot tests
```
