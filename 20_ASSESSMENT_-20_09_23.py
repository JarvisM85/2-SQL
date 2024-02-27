#DATE == > 20/09/2023


#Q1.

import pandas as pd
import numpy as np
exam_data = {'name': ['Ram', 'Sham', 'Krishna', 'Ramkrishna', 'Shubhendu', 'Mahesh', 'Matthew', 'Laura', 'Kevin', 'Jonas'],
             'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19],
             'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1],
             'qualify': ['yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes']}
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']


df = pd.DataFrame(exam_data,index=labels)
df


df['qualify'] = df['qualify'].map({'yes':True,'no':False})
df



###################################################3
#Q2.
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure()


l1 = [2,6,5]
l2 = [7,3,6]
plt.plot(l1,marker="+")
plt.plot(l2,marker="*")
plt.show()

###########################################
#Q3.
import numpy as np

arr = np.array([1, 2, 3])

l1 = np.linalg.norm(arr, ord=1)
l2 = np.linalg.norm(arr, ord=2)


print("L1 Norm:", l1)
print("L2 Norm:", l2)



###########################################
#Q4.

import numpy as np
arr1 = np.array([[1, 0],[1, 2]])
det = np.linalg.det(arr1)
print("Determinant of the array:")
print(det)






###########################################
#Q5.


def kth_ele(arr, k):
    if k < 1 or k > len(arr):
        print("Invalid")
    sorted_arr = sorted(arr)
    return sorted_arr[k - 1]

# Example usage:
lst = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
k = 3  
result = kth_ele(lst, k)
print(f"The {k}rd smallest element is: {result}")




