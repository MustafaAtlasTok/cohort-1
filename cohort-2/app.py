from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    name = os.getenv('APP_NAME', 'World')
    return f'Hello, {name}!'

if __name__ == '__main__':
    # bind to 0.0.0.0 so Docker can route traffic in
    app.run(host='0.0.0.0', port=8080)
