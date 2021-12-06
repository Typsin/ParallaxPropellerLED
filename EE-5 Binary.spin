{
  Project: EE-5 Assignment
  Platform: Parallax Project USB Board
  Revision: 1.0
  Author: Muhammad Nasharuddin
  Date: 26th Oct 2021
  Log:
    Date: Desc
}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

OBJ
  Term : "FullDuplexSerial.spin"

PUB Main

  DIRA[0..7]~~
  OUTA[0..7]~

repeat
    OUTA[0..7] := %11111100   '0
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %01100000   '1
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %11011010   '2
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %11110010   '3
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %01100110   '4
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %10110110   '5
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %10111110   '6
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %11100000   '7
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %11111110   '8
    waitcnt(cnt + 0.3 * clkfreq)

    OUTA[0..7] := %11110110   '9
    waitcnt(cnt + 0.3 * clkfreq)