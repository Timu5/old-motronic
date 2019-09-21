#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4
#define SHIFT_OE 13

#define EEPROM_D0 5
#define EEPROM_D7 12
#define EEPROM_OE A0


void setAddress(int address) {
  digitalWrite(SHIFT_LATCH, LOW);
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address >> 8);
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, HIGH);
}


byte readEEPROM(int address) {
  setAddress(address);
  digitalWrite(SHIFT_OE, LOW);
  digitalWrite(EEPROM_OE, LOW);
  delay(1);

  byte data = 0;
  for (int pin = EEPROM_D7; pin >= EEPROM_D0; pin -= 1) {
    data = (data << 1) + digitalRead(pin);
  }

  digitalWrite(EEPROM_OE, HIGH);
  digitalWrite(SHIFT_OE, HIGH);
  return data;
}


void setup() {
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  digitalWrite(SHIFT_OE, HIGH);
  pinMode(SHIFT_OE, OUTPUT);
  digitalWrite(EEPROM_OE, HIGH);
  pinMode(EEPROM_OE, OUTPUT);

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
