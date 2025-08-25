import Functorio

instance factoryConfig : Config := {
  generateBigPoles := false
  generateRoboports := false
  providerChestCapacity := 0
  adapterMinHeight := 0
  stationLayout := StationLayout.MirroredPair
}

def makeIron : IronOre 150 -> Bus (Iron 150) :=
  busAssemblyLine .ironPlate 4

def testFactory := bus do
  let ironOre <- input .ironOre 150

  let _iron : Iron 150 <- makeIron ironOre
--  let copper : Copper 150 <- makeCopper copperOre
--  let gear : Gear 150 <- makeGear iron
--  let _science : RedScience 150 <- makeRedScience copper gear

def main : IO Unit :=
  IO.println (testFactory.toBlueprint) --  (bootstrap := true))

#eval(IO.println (testFactory).toAscii)
