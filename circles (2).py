import Tkinter # built-in Python graphics library
import random

game_objects = []

class Circle:
    def __init__(self, x, y, a, b, j, k):
        '''Create a new circle at the given x,y point with a random speed, color, and size.'''

        self.x = x
        self.y = y
        self.x_speed = a
        self.y_speed = b
        self.eventx = j
        self.eventy = k
        # this creates a random hex string between #000000 and #ffffff
        # we draw it with an outline, so we'll be able to see it on a white background regardless
        self.color = '#{0:0>6x}'.format(random.randint(00,16**6))
        self.size = random.randint(5,75)
    
    def update(self):
        '''Update current location by speed.'''

        self.x += self.x_speed
        self.y += self.y_speed
        print('x: {} y: {}, x speed: {} y speed: {}, eventx {} eventy {}'.format(self.x, self.y, self.x_speed, self.y_speed, self.eventx, self.eventy))
        
    def draw(self, canvas):
        '''Draw self on the canvas.'''
        
        canvas.create_oval(self.x, self.y, self.x + self.size, self.y + self.size,fill=self.color, outline="black")
 
def addCircle(event):
    '''Add a new circle where the user clicked.'''

    global game_objects
    game_objects.append(Circle(250, 250, -((250-event.x)/100.0), -((250-event.y)/100.0), event.x, event.y ))


def reset(event):
    '''Clear all game objects.'''

    global game_objects
    game_objects = []


def draw(canvas):
    '''Clear the canvas, have all game objects update and redraw, then set up the next draw.'''

    canvas.delete(Tkinter.ALL)

    global game_objects
    for game_object in game_objects:
        game_object.update()
        game_object.draw(canvas)
    #to make it glitchy loking but to keep it from lagging, nex 2 lines \/
        if ((game_object.x > 550 and game_object.x_speed > 0) or (game_object.x < -50 and game_object.x_speed < 0) or (game_object.y > 550 and game_object.y_speed > 0) or (game_object.y < -50 and game_object.y_speed < 0) ):
                game_objects.remove(game_object)
            # game_objects.remove(game_object) # < for a tail

    delay = 33 # milliseconds, so about 30 frames per second
    canvas.after(delay, draw, canvas) # call this draw function with the canvas argument again after the delay

# this is a standard Python thing: definitions go above, and any code that will actually
# run should go into the __main__ section. This way, if someone imports the file because
# they want to use the functions or classes you've defined, it won't start running your game
# automatically
if __name__ == '__main__':

    # create the graphics root and a 400x400 canvas
    root = Tkinter.Tk()
    canvas = Tkinter.Canvas(root, width=500, height=500)
    canvas.pack()
    
    # if the user presses a key or the mouse, call our handlers
    root.bind('<Key-r>', reset)
    root.bind('<Button-1>', addCircle)

    # start the draw loop
    draw(canvas)

    root.mainloop() # keep the window open

