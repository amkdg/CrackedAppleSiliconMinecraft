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

    authjson["username"] = username
    authjson["password"] = password
    try:
        resp = json.loads(requests.post("https://authserver.mojang.com/authenticate", json=authjson).text)
        print(resp["accessToken"])
    except:
        print("2301283192")
