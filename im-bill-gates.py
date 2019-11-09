#!/usr/bin/env python3
import os
import sys
#print(os.getcwd())
class Main:
    def __init__(self, ext):
        self.ext = ext

    def main_loop(self, d):
        for f in os.listdir(d):
            if not f.startswith("."):
                rel_path = os.path.join(d, f)
                if os.path.isdir(rel_path):
                    self.main_loop(rel_path)
                elif os.path.isfile(rel_path) and not f == "im-bill-gates.py":# make script file recognize self
                    self.rename(rel_path)
                else: print("not file or dir?", rel_path)
        return

    def rename(self, f):
        arr = f.split(".")
        del arr [-1]
        arr.append(self.ext)
        renamed = ".".join(arr)
        os.rename(f, renamed)
        return

if not len(sys.argv) > 1 or not sys.argv[1]:
    print("but what language tho?")
else:
    m = Main(sys.argv[1])
    m.main_loop(os.getcwd())
    print("DONE!")