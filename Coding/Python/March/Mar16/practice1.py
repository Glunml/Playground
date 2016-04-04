import os

def getNames(): 
    fileList = os.listdir(r"/files")
    print (fileList)
    savedPath = os.getcwd()
    os.cidir(r"prank/")

    for fileName in fileList:
        os.rename(None,"qwertyuiopasdfghjklzxcvbnm")
        os.chdir(savePath)

getNames()
