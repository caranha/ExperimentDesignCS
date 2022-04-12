import os
import argparse

filename = os

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("filename", metavar="filename", type=str)
    filename = (parser.parse_args()).filename

    with open(filename) as f:
        lines = f.readlines()
        for iter, line in enumerate(lines):
            if line[:3] == "00:":
                print(lines[iter+1][:-1])
