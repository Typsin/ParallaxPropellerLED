{
  Project: EE-5 Practical 1
  Platform: Parallax Project USB Board
  Revision: 1.0
  Author: Muhammad Nasharuddin
  Date: 25th Oct 2021
  Log:
    Date: Desc
    25/10/2021: Adding 2 LEDs
}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000
        {
        checkValue = 10 'Fixed, cannot be changed during runtime
         }
VAR  'Global Variable

  byte checkValue[5] '8-bit

OBJ

  Term : "FullDuplexSerial.spin"  'UART Communication

PUB Main | i,k '4-bytes => long

  ' Declaration & Initilisation
  DIRA[20..21]~~ '<= Output
  OUTA[20..21]~  '<= Low = Voltage = 0/Gnd, High => Voltage 3.3v

  Term.Start(31, 30, 0, 115200)
  waitcnt(cnt + clkfreq*2)

  checkValue[0] := 10
  checkValue[1] := 20
  checkValue[2] := 30
  checkValue[3] := 40
  checkValue[4] := 50

  repeat i from 0 to 4 'step 2

    k := checkAndReturnValue(checkValue[i])

    Term.Str(String("checkValue is "))
    Term.Dec(k)
    Term.Tx(13)
    waitcnt(cnt + clkfreq)
{
  if checkValue > 10
    Term.Str (String("Value is more 10"))
  else
    Term.Str (String("Value is not more 10"))

  repeat 10 'Loop
    waitcnt(cnt + clkfreq) 'clkfreq = 1 sec, clkfreq/2
    !OUTA[20..21]   '! => inverse => OUTA[20..21]~~
    Term.Str(String("Hello"))
 }
  repeat


PUB checkAndReturnValue(parameter) : returnValue | i

 case parameter 'checking the value in the array on current i counter
      10:
        returnValue := 10
      20:
        returnValue := 20
      30:
        returnValue := 30
      40:
        returnValue := 40
      50:
        returnValue := 50

return returnValue