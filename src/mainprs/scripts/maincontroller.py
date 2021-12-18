import rospy
import time
from mainprs.msg import sensors_flag as sensor

counter = 0
ss_flag = 0

curr_position_x =0
curr_position_y =0

moving_up =0
moving_down =0
moving_left =0
moving_right =0

def checkin(data):
    rospy.loginfo('checkin!')
    global counter
    global ss_flag
    if data.flag == 0:
        counter = 0
        ss_flag = 0
    else:
        ss_flag = data.flag
        counter += 1
        if counter == 10:
            rospy.loginfo('Error! Object nearby! Need help!')

def obj():
    global ss_flag
    rospy.Subscriber('sensor_report', sensor, checkin)
    if (ss_flag !=0):
        return True
    return False

def goto_location(data):
    global ss_flag
    global curr_position_x
    global curr_position_y
    move_up_steps = data.x - curr_position_x
    move_right_steps = data.y - curr_position_y

    for i in range(abs(move_up_steps)):
        if(obj):
            rospy.loginfo('Error!')
        else:
            if move_up_steps<0:
                curr_position_x -=1
                moving_down = 1
            else:
                curr_position_x +=1
                moving_up = 1
    #reset
    moving_up = 0
    moving_down = 0

    for j in range(abs(move_right_steps)):
        if (obj):
            rospy.loginfo('Error!')
        else:
            if move_right_steps<0:
                curr_position_y -=1
                moving_left=1
            else:
                curr_position_y +=1
                moving_right =1
    #reset
    moving_left =0
    moving_right=0




def control():
    rospy.init_node('robot', anonymous =True)
    while not rospy.is_shutdown():
        # rospy.Subscriber('sensor_report', sensor, checkin)

        rospy.loginfo('robot status: ')
        rospy.loginfo('sensor flag: %d' %ss_flag)
        time.sleep(1)
        # rospy.spin()

if __name__ == '__main__':
    control()
