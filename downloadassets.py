import os
import json
import requests
import multiprocessing as mp

def download(o):
    print(o[0])
    h = o[1]["hash"]
    filename = "{}/{}".format(h[:2], h)
    dirname = "assets/objects/{}".format(filename)
    url = "https://resources.download.minecraft.net/{}".format(filename)
    os.makedirs(os.path.dirname(dirname), exist_ok=True)
    f = open(dirname, "wb")
    f.write(requests.get(url).content)
    f.close()

if __name__ == "__main__":
    index = requests.get("https://launchermeta.mojang.com/v1/packages/f8e11ca03b475dd655755b945334c7a0ac2c3b43/1.16.json").text
    f = open("assets/indexes/1.16.json", "w")
    f.write(index)
    f.close()
    assets = json.loads(index)
    obj = assets["objects"]
    o = [[x[0], obj[x[1]]] for x in enumerate(obj.keys())]
    pool = mp.Pool(20)
    pool.map(download, o)
