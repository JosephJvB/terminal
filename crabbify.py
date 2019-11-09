import os

#print(os.getcwd())
def main_loop(d):
    for f in os.listdir(d):
        if not f.startswith("."):
            rel_path = os.path.join(d, f)
            if os.path.isdir(rel_path):
                main_loop(rel_path)
            elif os.path.isfile(rel_path) and not f == "crabbify.py":
                rename(rel_path)
            else: print("not file or dir?", rel_path, )
    return

def rename(f):
    arr = f.split(".")
    del arr [-1]
    arr.append("go")
    rusted = ".".join(arr)
    os.rename(f, rusted)
    return

main_loop(os.getcwd())