#/usr/bin/python3

import os
def app(environ, start_response):
    
    path = environ.get("PATH_INFO")
    match path:
        case "/hostname":
            data = os.getenv('HOSTNAME')
        case "/author":
            data = os.getenv('AUTHOR')
        case "/id":
            data = os.getenv('UUID')
        case _:
            data = f'no url specified'

    data = data.encode("utf-8")
    start_response(
        f"200 OK", [
            ("Content-Type", "text/html"), ("Content-Length", str(len(data)))
        ]
    )
    return iter([data])
