import pyximport
pyximport.install()

import wrap_server

if __name__ == "__main__":
    wrap_server.start()
