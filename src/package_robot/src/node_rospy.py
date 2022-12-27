#!/usr/bin/env python
# encoding: utf-8

import rospy

def node():
    rospy.init_node('node1')
    message = "Hello world"
    #print(message)
    rospy.loginfo(message)

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass