ROBOT_LISTENER_API_VERSION = 3

def end_test(data, result):
    if not result.passed:
        print("\n*********** ERROR: *************\n")
        print('Test "%s" failed: %s' % (result.name, result.message))
        # input('Press enter to continue.')
        print("\n*******************************\n")

# def end_keyword(name, attrs):
#         print(name)
#         pass