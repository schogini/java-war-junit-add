from flask import Flask
from redis import Redis, RedisError
import os
import socket
from flask_cors import CORS

# Connect to Redis
redis = Redis(host="redis", db=0, socket_connect_timeout=2, socket_timeout=2)

app = Flask(__name__)
CORS(app)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

@app.route("/", methods=['GET', 'POST'])
def hello():
    try:
        visits = redis.incr("counter")
    except RedisError:
        visits = "<i>cannot connect to Redis, counter disabled</i>"

    html = "<h3>Hello {name}!</h3>\n" \
           "<b>Hostname:</b> {hostname}<br/>\n" \
           "<b>Visits:</b> {visits}\n"

    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname(), visits=visits)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8181)