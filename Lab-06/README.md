# Workshop - Robot Framework

# Lab-06 - Continuous Integration and Reporting

## Goal
Automate and integrate tests into a pipeline. Configure a project to run automatically in a CI pipeline (GitHub Action)

## Useful documentation

- [Python Documentation](https://docs.python.org/3/reference/index.html)
- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [GitHub Action](https://docs.github.com/en/actions)


# Practical Activity - Steps

### 1. Setup
Install the following libraries
   ```pwsh
   # python-dotenv Library
   pip install python-dotenv
   ```


pip install python-dotenv
### 2. Implement Page Object Mode by reusing the Lab-03 test case. 


### 3. Apply a naming Convention for this project.
1. Directories: ``` e.g. library ```
2. Test Suite:``` e.g. labX_test.robot ```
3. Keywords:``` e.g. PAGE_keyword.resource ```
4. Variables:``` e.g. ${VARIABLE_NAME} ```
5.    ...


### 4. Apply Documentation
1. Should be used the syntax ``` [Documentation] ``` to describe the script/test/keyword
2. Tags should be used to facilitate the execution and analysis of reports. Use ``` [Tags] ``` for each test case.


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



