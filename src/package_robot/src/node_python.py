#!/usr/bin/env python
# encoding: utf-8

def nodo():
    message = "Hello world"
    print(message)

if __name__ == '__main__':
    try:
        nodo()
    except:
        print("An exception has ocurred")