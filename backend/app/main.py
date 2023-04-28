from fastapi import FastAPI

app = FastAPI()


@app.post("/command/up")
def move_up():
    return {"message": "Moving up!"}


@app.post("/command/down")
def move_down():
    return {"message": "Moving down!"}


@app.post("/command/left")
def move_left():
    return {"message": "Moving left!"}


@app.post("/command/right")
def move_right():
    return {"message": "Moving right!"}


@app.post("/command/takeoff")
def takeoff():
    return {"message": "Taking off!"}


@app.post("/command/land")
def land():
    return {"message": "Landing!"}
