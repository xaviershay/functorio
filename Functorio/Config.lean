inductive StationLayout where
  | Standard
  | MirroredPair
  deriving Repr, DecidableEq

class Config where
  generateRoboports : Bool
  generateBigPoles : Bool
  providerChestCapacity : Nat
  adapterMinHeight : Nat
  stationLayout : StationLayout

instance : Config where
  generateRoboports := false
  generateBigPoles := false
  providerChestCapacity := 0
  adapterMinHeight := 0
  stationLayout := StationLayout.Standard
