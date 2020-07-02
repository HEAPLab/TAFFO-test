#!/usr/bin/python

import pandas as pd
import numpy as np

def subsample(df,window=400):
	return df.iloc[window/2::window, :]

def maxminz(df,window=400):
	return df['Z-accel'].rolling(window, center=True).max() - df['Z-accel'].rolling(window, center=True).min()

def smv(df):
	return pd.DataFrame(np.sqrt(df['X-accel']**2+df['Y-accel']**2+df['Z-accel']**2))

def sqrt_approx(x):
	from numpy import log2
	a=2*(log2(x)-1)
	r=x-a**2
	return a+(r/(2*a+r/(4*a)))

def smv_fix(df):
	return pd.DataFrame(sqrt_approx(df['X-accel']**2+df['Y-accel']**2+df['Z-accel']**2))

def sma(df,window=400):
	x = df['X-accel'].abs().rolling(window, center=True).mean() + df['Y-accel'].abs().rolling(window, center=True).mean() + df['Z-accel'].abs().rolling(window, center=True).mean()
	return subsample(pd.DataFrame(x),window)

def aivi(smv,window=400):
	ai=smv.rolling(window, center=True).mean()	
	df2=(smv-ai)**2
	vi=df2.rolling(window, center=True).mean()
	return subsample(ai), subsample(vi)

def build_test(df,fix=False):
	the_smv = smv(df) if not fix else smv_fix(df)
	the_sma = sma(df)
	ai, vi = aivi(the_smv)
	mmz = subsample(pd.DataFrame(maxminz(df)))
	dfe = subsample(pd.DataFrame(df['Activity']))
	dfe['SMV']=the_smv #lunghezza totale vettore
	dfe['SMA']=the_sma #somma dei valori assoluti dei vettori
	dfe['AI'] =ai #rolling mean of smv
	dfe['VI'] =vi #rolling of (smv-ai)^2 
	dfe['MMZ']=mmz #minmax on z
	dfe=dfe.dropna()
	#print dfe.describe()
	return dfe

def load_df(fname):
	df=pd.read_csv(fname)
	df1=pd.DataFrame(df['Activity'])
	# Discretize
	df1['X-accel']=np.digitize(df['X-accel'],bins=[1,2,4,8,12,16,24,48])
	df1['Y-accel']=np.digitize(df['Y-accel'],bins=[1,2,4,8,12,16,24,48])
	df1['Z-accel']=np.digitize(df['Z-accel'],bins=[1,2,4,8,12,16,24,48])
	df2=pd.DataFrame(df['Activity'])
	df2['X-accel']=df['X-accel']
	df2['Y-accel']=df['Y-accel']
	df2['Z-accel']=df['Z-accel']
	return build_test(df2), build_test(df1,True)

if __name__ == '__main__':
	from sys import argv
	from os import walk
	dfs = []
	for (dirpath, dirnames, filenames) in walk(argv[-1]):
		for f in filenames :
			print "Loading "+argv[-1]+'/'+f
			dfs.append(load_df(argv[-1]+'/'+f))
	dffloat,dffixed=dfs[0]
	for df1, df2 in dfs[1:] :
		dffloat=dffloat.append(df1,ignore_index=True)
		dffixed=dffixed.append(df2,ignore_index=True)
	#dffloat,dffixed=load_df(argv[-1])
	print 'Test float'
	print dffloat.describe()
	dffloat.to_csv("exported.csv")


