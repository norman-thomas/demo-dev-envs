#! /usr/bin/env python

import os
from flask import Flask

app = Flask(__name__)

COUNTER_FILENAME = "counter.txt"

@app.route("/")
def hello():
    count = 0
    if os.path.exists(COUNTER_FILENAME):
        with open(COUNTER_FILENAME, "r") as f:
            count = int(f.read().strip())
    with open(COUNTER_FILENAME, "w") as f:
        f.write(str(count + 1))

    return f"""<html>
    <body>
    <h2>Hello, from inside the dev-Container!</h2>
    <p>Got called {count + 1} times.</p>
    </body>
    </html>
    """


def run():
    app.debug = True
    app.run(host="0.0.0.0")


if __name__ == "__main__":
    run()
