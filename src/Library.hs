module Library where
import PdePreludat

-- Punto 1

type CantidadHs = Number 
type NombreObjeto = String
type Presion = Number


presionDeUnGolpe :: CantidadHs-> NombreObjeto -> Presion
presionDeUnGolpe horas nombre =   poderGolpe horas / fortaleza nombre

poderGolpe :: CantidadHs->Number  --Paso las horas y realizo la multiplicacion
poderGolpe= (*15)

fortaleza :: NombreObjeto->Number  --Paso el nombre del objeto y primero se calcula la cantidad de letras para despues multiplicarlo por 2
fortaleza= (2*).length


--Punto 2

type GolpeGomu = NombreObjeto -> Presion  {-Realizamos esto para simplificar la definicion de la funcion (? // Ya que GolpeGomu va a recibir solo 
                                           un string (nombreObjeto) y va a devolver la presion,ya que las horas ya estan "definidas"-}

gomuGomu :: GolpeGomu
gomuGomu = presionDeUnGolpe 180


type GolpesNormalesConsec = NombreObjeto -> Presion

golpesNormCons :: GolpesNormalesConsec  --Golpes normales consecutivos, mismo pensamiento que golpes gomugomu
golpesNormCons = presionDeUnGolpe 240


-- Punto 3 

objDificil :: NombreObjeto->Bool
objDificil= (<100).gomuGomu

{-comp :: Number->Bool  pensado sin aplicacion parcial y composicion
comp x = x < 100 -}

objAccesible :: NombreObjeto->Bool
objAccesible = objetivoEntre.golpesNormCons.focalizar7

objetivoEntre :: Number->Bool
objetivoEntre= between 200 400  

between :: Number-> Number->Number->Bool                    
between bajo alto medio =  bajo <= medio && medio <= alto

focalizar7 :: NombreObjeto -> NombreObjeto  --focalizar7: quedarse con las primeras 7 letras de su nombre
focalizar7 = take 7













