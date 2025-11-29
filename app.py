from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello DevOps! khd0w-vagyok. Ez az első HTTP válaszom."

if __name__ == "__main__":
    # host="0.0.0.0" hogy dockerben is jól fusson majd
    app.run(host="0.0.0.0", port=8080)