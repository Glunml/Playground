xPos = 0
    yPos = 0

def setup():
    size(500,500)
    mXpos = mouseX
    mYpos = mouseY

    
def draw():
    background(255)
    strokeWeight(1)
    line (0,0,xPos,yPos)
    line (xPos,yPos,width,height)
    line (xPos,yPos,0,height)
    line (xPos,yPos,width,0)
        
        
def mouseClicked():
    
    xPos = width/2
    yPos = height/2