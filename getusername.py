import requests
import json
import sys

authjson = {
    "agent": {
        "name": "Minecraft",
        "version": 1
    },
    "clientToken": "client identifier",
    "requestUser": True
}

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]
    name = sys.argv[3]

    authjson["username"] = username
    authjson["password"] = password
    try:
        if name == '':
            resp = json.loads(requests.post("https://authserver.mojang.com/authenticate", json=authjson).text)
        else:
            resp = {}
            resp["selectedProfile"] = {}
            resp["selectedProfile"]["name"] = name
        print(resp["selectedProfile"]["name"])
    except:
        resp = {}
        resp["selectedProfile"] = {}
        resp["selectedProfile"]["name"] = name
        print(resp["selectedProfile"]["name"])
