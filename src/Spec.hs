module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Testeo del punto 1: presionDeUnGolpe" $ do   --Parte del punto 1 testeada ya que no hay otros tipos de resultados
    it "La presion de un golpe con 200hs de entrenamiento sobre una bolsa de entrenamiento deberia ser 68" $ do
      presionDeUnGolpe 200 "Bolsa de Entrenamiento" `shouldBe` 68.181818182
  describe "Testeo del punto 2: Golpe gomu gomu elephant gatling" $ do  
    it "La presion de un golpe gomo gomu... sobre la bolsa de entrenamineto deberia ser 61" $ do
      gomuGomu  "Bolsa de Entrenamiento"  `shouldBe` 61.363636364
  describe "Testeo del punto 2: Golpes normales consecutivos" $ do  
    it "La presion de unos golpes normales consecutivos sobre la bolsa deberia ser 81 " $ do
      golpesNormCons "Bolsa de Entrenamiento"  `shouldBe` 81.818181818
  describe "Testeo del punto 3: es dificil un objetivo?" $ do  
    it "La bolsa de entrenamiento es un objetivo dificil " $ do
      objDificil "bolsa de entrenamiento"  `shouldBe` True
    it "El puf no es un objetivo dificil" $ do
     objDificil "Puf" `shouldBe` False
  describe "Testeo del punto 3: es accesible un objetivo?" $ do
    it "Una bolsa de entrenamiento como objetivo es accesible" $ do
      objAccesible "Bolsa de entranamiento" `shouldBe` True
    it "Un puf como objetivo no es accesible" $ do
      objAccesible "puf" `shouldBe` False 

