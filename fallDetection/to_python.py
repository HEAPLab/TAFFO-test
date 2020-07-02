#!/usr/bin/python

import scipy as sp
import pandas as pd
import numpy as np
from scipy.io import loadmat

headings = ['Time', 'X-accel', 'Y-accel', 'Z-accel', 'X-anglv', 'Y-anglv', 'Z-anglv', 'X-magf', 'Y-magf', 'Z-magf']

def convert(data):
	readings=data[0][0]
	activities=data[0][2][0]
	timings=data[0][3][0]
	activity_column = [ np.NaN ] * len(readings)
	for i in range(len(activities)) :
		a=activities[i]
		i1=timings[2*i]
		i2=timings[2*i+1]
		for j in range(i1-1,i2):
			activity_column[j]=a	
	res=pd.DataFrame(readings, columns=headings)
	res['Activity']=activity_column
	return res

rawdata=loadmat('ARS_DLR_DataSet.mat')
d={}
for i in rawdata :
	if i[:3] != 'ARS' : continue
	d[i] = convert(rawdata[i])
	with open('data/'+i+'.csv','w') as fout :
		fout.write(d[i].to_csv())

