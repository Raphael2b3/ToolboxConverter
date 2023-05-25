import re

def getFilterFrom(filter_path):
    if not filter_path: return None
    filter = []
    for line in open(filter_path, "r", encoding="utf-8").readlines():
        if not re.match("(.+?_[I\d]+_);(\d+)\.([\d\S]+);(\d+)\.([\d\S]+);\S", line): continue
        splitted = line.split(";");
        parsed = [splitted[0] + splitted[1],splitted[0] + splitted[2], splitted[3].strip()]
        filter.append(parsed)
