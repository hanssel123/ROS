#!/usr/bin/env python
# encoding: utf-8

import rospy
from package_robot.srv import SumTwoInts

def add_two_ints_client(x, y):
    rospy.wait_for_service('sum_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('sum_two_ints', SumTwoInts)
        resp = add_two_ints(x,y)
        return resp.sum
    except rospy.ServiceException as e :
        print("Service call failed: %s"%e)

def node():
    rospy.init_node('node_sum_two_ints_client')
    x = 7
    y = 8
    #nombre del servicio, clase de servicio, funcion donde se porcesara la data
    print("Requesting %s+%s"%(x, y))
    print("%s + %s = %s"%(x, y, add_two_ints_client(x,y)))

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass