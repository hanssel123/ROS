#!/usr/bin/env python
# encoding: utf-8

import rospy

from package_robot.srv import SumTwoInts, SumTwoIntsResponse

def handle_sum_two_ints(req):
    print ("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    return SumTwoIntsResponse(req.a + req.b)

def node():
    rospy.init_node('node_sum_two_ints_server')
    #nombre del servicio, clase de servicio, funcion donde se porcesara la data
    s = rospy.Service('sum_two_ints', SumTwoInts, handle_sum_two_ints)
    print("Ready to add two ints.")
    rospy.spin()

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass