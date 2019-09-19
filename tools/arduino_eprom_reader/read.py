import serial
import time

adr = 0

buffer = []

ser = serial.Serial('/dev/ttyS10', 57600, timeout = 60)
ser.write('dummy_dummy_dummy_dummy'.encode('ascii'))
time.sleep(5)

ser.write('g'.encode('ascii'))
for x in range(2**16):
	data = ser.read_until()[:-2]
	ser.write('g'.encode('ascii'))
	v = int(data)
	adr += 1
	buffer.append(v)
	
	if(adr%1024 == 0):
		print(adr)
			
newFile = open("out"+str(int(time.time()))+".bin", "wb")
		
newFile.write(bytearray(buffer))
