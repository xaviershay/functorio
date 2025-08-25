import Functorio.AssemblyLine
import Functorio.Ascii

#guard (station .ironPlate).toAscii ==s!"
 ^     v
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ^     v
"

#guard (station .electronicCircuit).toAscii == s!"
 ^^     v
 ↑↑ *** ↓
 ↑↑↠*A* ↓
 ↑↑⇨***⇨↓
 ↑↑  ⚡  ↓
 ^^     v
"

#guard (station .advancedCircuit).toAscii == s!"
 ^^     ^v
 ↑↑ *** ↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ^^     ^v
"

#guard (station .flyingRobotFrame).toAscii == s!"
 ^^^     ^v
 ↑↑↥↠*** ↑↓
 ↑↑↠ *A*↠↑↓
 ↑↑⤒⇨***⇦↑↓
 ↑↑↑  ⚡  ↑↓
 ^^^     ^v
"

#guard (station .processingUnit).toAscii == s!"
  ^ ^^     v
  | ↑↑↠*** ↓
  |┤↑↑├*A* ↓
  | ↑↑⇨***⇨↓
  | ↑↑  ⚡  ↓
  ^ ^^     v
"

#guard (station .battery).toAscii == s!"
  ^ ^^     v
  |┤↑↑├*** ↓
  | ↑↑↠*C* ↓
  | ↑↑⇨***⇨↓
  | ↑↑  ⚡  ↓
  ^ ^^     v
"

#guard (station .sulfuricAcid).toAscii == s!"
  ^ ^^     v
  |┤↑↑├***||
  | ↑↑↠*C* |
  | ↑↑⇨*** |
  | ↑↑  ⚡  |
  ^ ^^     v
"

#guard (station .sulfur).toAscii == s!"
  ^ ^     v
  |┤|├*** ↓
  | | *C* ↓
  | ||***⇨↓
  | |  ⚡  ↓
  ^ ^     v
"

#guard (station .solidFuelFromLightOil).toAscii == s!"
  ^     v
  ||*** ↓
  | *C* ↓
  | ***⇨↓
  |  ⚡  ↓
  ^     v
"

#guard (station .rocketFuel).toAscii == s!"
  ^ ^     v
  | ↑ *** ↓
  |┤↑├*A* ↓
  | ↑⇨***⇨↓
  | ↑  ⚡  ↓
  ^ ^     v
"

#guard (station .heavyOilCracking).toAscii == s!"
  ^ ^     v
  | |     |
  |┤|├***||
  | | *C* |
  | ||*** |
  | |  ⚡  |
  ^ ^     v
"

#guard (station .advancedOilProcessing).toAscii == s!"
  ^ ^       v v v
  | |       | | |
  | | *****|| | |
  |┤|├***** | | |
  | | **O**┤|├| |
  | ||***** | | |
  | | *****┤| |├|
  | |   ⚡   | | |
  ^ ^       v v v
"

#guard (station .rocket).toAscii == s!"
 ^^           ^
 ↑↑ ********* ↑
 ↑↑↠********* ↑
 ↑↑⇨*********⇦↑
 ↑↑ ********* ↑
 ↑↑ ****L**** ↑
 ↑↑ ********* ↑
 ↑↑ ********* ↑
 ↑↑ ********* ↑
 ↑↑ ********* ↑
 ↑↑     ⚡     ↑
 ^^           ^
"

#guard (assemblyLine .advancedCircuit 3).toAscii == s!"


 ↑↑ *** ↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ *** ↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ *** ↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ^^     ^v
"

#guard (bus do
  let acid <- input .sulfuricAcid (75/2)
  let green <- input .electronicCircuit 150
  let red <- input .advancedCircuit 15
  let _ <- busAssemblyLine .processingUnit 1 acid.exact green red
).toAscii == s!"


  | ↑↑↠*** ↓
  |┤↑↑├*A* ↓
  | ↑↑⇨***⇨↓
  | ↑↑  ⚡  ↓
  |→↑↑↓←←←←←
  |↑ ↑↓
>||↑ ↑→→→→→→>
>→⇥↑↦↑
>→→↑

"

#guard (bus do
  let copper <- input .copperPlate 750
  let _ <- busAssemblyLine .copperCable 5 copper
).toAscii == s!"


 ↑ *** ↓
 ↑ *A* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑  ↓←*↓
 ↑↓←←↓S←
 ↑↓ ↑←→↓
 ↑→⇥⚡↦↑↓
 ↑ *** ↓
 ↑ *A* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *A* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *A* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *A* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑←↓←←←←
  ↑↓
>→↑→→→→→>

"

instance : Config where
  generateBigPoles := true
  generateRoboports := true
  providerChestCapacity := 3
  adapterMinHeight := 3
  stationLayout := StationLayout.Standard

#guard (bus do
  let ironOre <- input .ironOre 525
  let _ <- busAssemblyLine .ironPlate 14 ironOre
).toAscii = s!"


 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ ****↓
 ↑ ****↓
 ↑ **R*↓
 ↑ ****↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ *** ↓
 ↑ *F* ↓
 ↑⇨***⇨↓
 ↑  ⚡  ↓
 ↑ ****↓
 ↑ ****↓
 ↑ **R*↓
 ↑ ****↓
 ↑     ↓
 ↑  ⚡🄿⇦↓
 ↑     ↓
 ↑     ↓
 ↑  ** ↓
 ↑  *↯ ↓
 ↑ ↓←←←←
 ↑ ↓
 ↑←↓
  ↑↓
>→↑→→→→→>

"

#guard (bus do
  let stone <- input .stone 750
  let stick <- input .ironStick 750
  let steel <- input .steelPlate 750
  let _ <- busAssemblyLine .rail 5 stone stick steel
).toAscii == s!"


 ↑↑ ***↠↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑  ↓←*↥↓
 ↑↑↓←←↓S←←
 ↑↑↓ ↑←→→↓
 ↑↑→⇥⚡↦↑⤒↓
 ↑↑ ***↠↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ ***↠↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ ***↠↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ ***↠↑↓
 ↑↑↠*A*↠↑↓
 ↑↑⇨***⇦↑↓
 ↑↑  ⚡  ↑↓
 ↑↑ ****↑↓
 ↑↑ ****↑↓
 ↑↑ **R*↑↓
 ↑↑ ****↑↓
 ↑↑     ↥↓
 ↑↑  ⚡ 🄿⇦↓
 ↑↑     ⤒↓
 ↑↑     ↑↓
 ↑↑  ** ↑↓
 ↑↑  *↯ ↑↓
 ↑↑ →→→→↑↓
 ↑↑←↑↓←←←←
 ↑←↑↑↓
  ↑↑↑↓
>→↑↑↑→→→→→>
>→→↑↑
>→→→↑

"
