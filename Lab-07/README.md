# Workshop - Robot Framework

# Lab-07 - Advanced Topics

## Goal
Cover advanced functionalities for more experienced teams.
1. Creating custom listener
2. Parallel execution with Pabot
3. Connecting to APIs

## Useful documentation

- [Python Documentation](https://docs.python.org/3/reference/index.html)
- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [Robot Framework - Listener](https://docs.robotframework.org/docs/extending_robot_framework/listeners_prerun_api/listeners)
- [Robot Framework - Pabot](https://docs.robotframework.org/docs/parallel)
- [Robot Framework - Requests](https://docs.robotframework.org/docs/different_libraries/requests)


# Practical Activity - Steps

### 1. Setup
Install the following libraries
   ```pwsh
   # Requests Library
   pip install robotframework-requests
   # Running tests in parallel - Pabot
   pip install -U robotframework-pabot
   # JSON Library
   robotframework-jsonlibrary
   ```

### 2. Let's create a test case to test an API.
1. For this test case, we will use the following endpoint to perform a GET request.
      * https://api.restful-api.dev/objects
2. Create a new Test Suite file and implement the test case using Requests Library.


### 3. Configuring a listener to log each result at the end of each test.
1. Create a new directory `listener` and a new python file `listener.py`
2. In this file you should implement a listener to `print` the test name, result and the error message.


### 4. Parallel execution
1. You should be able to run the Test Plan in parallel using `Robot Framework - Pabot`


## Running Tests
Run all tests in the `tests` folder:

To run tests folder
```Shell
python -m robot --outputdir .\Lab-05\results  .\Lab-05\tests\lab5_test.robot 
```

To run scenarios by tag
```Shell
python -m robot --outputdir .\Lab-05\results -i <TAG> .\Lab-05\tests\lab5_test.robot
```

Execution with listeners
```Shell
robot -d .\results\ --listener .\Lab-07\listener\listener.py .\tests\e2e\test_1.robot
```

Parallel Execution
```Shell
pabot --testlevelsplit --processes 2  --outputdir .\results  .\tests
```
#test

