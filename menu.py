#LAB6 Python starter code
#imports go here
#import MySQLdb
import _mysql

#code goes here

buffer = "true"



def oneQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="thunder",db="magic")
	db.query("""SELECT * FROM magiccards;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def twoQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="thunder",db="magic")
	db.query("""SELECT * FROM series;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def threeQuery():
	db = _mysql.connect(host="localhost",user="root",passwd="thunder",db="magic")
	#db.query("""SELECT * FROM magiccards WHERE Pack Numbder NOT IN (SELECT * FROM magiccards as a, funding AS b WHERE  
	#	a.Pack Numbder = b.seriesID;)""")
	db.query("""SELECT Pack Numbder FROM series WHERE seriesID not in (selectseriesID from funding)""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""all cards must have a pack id number""")
	db.close()
	
while buffer:
	print("""
	0.Exit
	1.See Magic
	2.See Series
	3.See if a magic has no Pack Numbder
	""")
	buffer=input("Please add pack numbder id ")
	if buffer == 1:
		oneQuery()
	if buffer == 2:
		twoQuery()
	if buffer == 3:
		threeQuery()