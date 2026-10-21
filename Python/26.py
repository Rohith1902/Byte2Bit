import re
import sys

failures = {}

with open(sys.argv[1], "r") as file:
    for line in file :
        if "[ERROR]" in line :
            match = re.search(
                r"\[ERROR\] \[(\w+)\] (.*)",line
            )
            if match :
                name = match.group(1)
                message = match.group(2)

                if name not in failures :
                    failures[name] = []
                failures[name].append(message)

for name,messages in failures.items():
    print(f"{name}:count = {len(messages)},messages = {messages}")