import rospy
from sensors.msg import sensors_flag

def sensor_reporter():
    update = rospy.Publisher('sensor_report', sensors_flag)
    rospy.init_node('sensors', anonymous = True)
    r = rospy.Rate(1) #20hz
    msg = sensors_flag()
    sensor_head = input('type in data from head sensor: ')
    sensor_left = input('type in data from left sensor: ')
    sensor_right = input('type in data from right sensor: ')
    sensor_bottom = input('type in data from bottom sensor: ')
    sensor_back = input('type in data from back sensor: ')

    count = 0
    while not rospy.is_shutdown():
        flag = 0 #safe
        rospy.loginfo('distance from head sensor: %d' +sensor_head)
        if int(sensor_head) <= 20:
            flag = 1 #object ahead

        rospy.loginfo('distance from back sensor: %d' +sensor_back)
        if int(sensor_back) <= 20:
            flag = 2 #object behind

        rospy.loginfo('distance from left sensor: %d' +sensor_left)
        if int(sensor_left) <= 20:
            flag = 3 #object left

        rospy.loginfo('distance from right sensor: %d' +sensor_right)
        if int(sensor_right) <= 20:
            flag = 4 #object ahead

        rospy.loginfo('distance from bottom sensor: %d' +sensor_bottom)
        if int(sensor_bottom) != 10:
            flag = 5 #gaps behind, can't go back more

        msg.flag = flag
        rospy.loginfo('sensors update: %d' %msg.flag)
        update.publish(msg)
        count += 1
        if count % 10 ==0:
            rospy.loginfo('update head sensor: ')
            sensor_head = input('type in new value for head sensor: ')
        r.sleep()

if __name__ == '__main__':
    try:
        sensor_reporter()
    except rospy.ROSInterruptException:
        pass
