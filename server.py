from flask import Flask, request
app = Flask(__name__)

@app.route("/")
def hello():
    print(request.headers)
    return "Hello World!"

@app.route("/health")
def health():
  return "Todo en orden"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=int("8080"))
