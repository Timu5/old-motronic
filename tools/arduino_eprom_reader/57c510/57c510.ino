#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4
#define SHIFT_OE 13

#define EEPROM_G A1
#define EEPROM_ALE A0
#define EEPROM_D0 5
#define EEPROM_D7 12

void setAddress(int address) {
  digitalWrite(SHIFT_LATCH, LOW);
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address >> 8);
  digitalWrite(SHIFT_LATCH, HIGH);
  
  byte adr_low = address & 0xff;
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin++) {
    digitalWrite(pin, adr_low & 1);
    adr_low = adr_low >> 1;
  }
}

byte readEEPROM(int address) {
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }
  setAddress(address);
  digitalWrite(SHIFT_OE, LOW);
  digitalWrite(EEPROM_ALE, HIGH);
  delayMicroseconds(1);
  digitalWrite(EEPROM_ALE, LOW);
  delayMicroseconds(1);
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  delayMicroseconds(1);
  digitalWrite(EEPROM_G, LOW);
  delayMicroseconds(1);

  byte data = 0;
  for (int pin = EEPROM_D7; pin >= EEPROM_D0; pin -= 1) {
    data = (data << 1) + digitalRead(pin);
  }
  
  digitalWrite(EEPROM_G, HIGH);
  digitalWrite(SHIFT_OE, HIGH);
  return data;
}

int adr = 0;

void setup() {
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  digitalWrite(SHIFT_OE, HIGH);
  pinMode(SHIFT_OE, OUTPUT);
  digitalWrite(EEPROM_G, HIGH);
  pinMode(EEPROM_G, OUTPUT);
  digitalWrite(EEPROM_ALE, LOW);
  pinMode(EEPROM_ALE, OUTPUT);
  

  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  
  Serial.begin(57600);
}

void loop() {
   if (Serial.available() > 0) {
    byte data = Serial.read();
    if(data == 'g')
    {
      Serial.println(readEEPROM(adr));
      adr++;
    }
    if(data == 'a')
    {
      Serial.println(adr);
    }
    if(data == 'r')
    {
      adr = 0;
    }
   }
}
