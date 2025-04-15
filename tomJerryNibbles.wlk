object tom {
  var energia= 50
  var velocidadMaximaDeTom= 5+(energia/10)

  method comerUnRaton(raton) {
    energia= energia +(12+raton.peso())
    return "Tom comio a "+ raton.nombre()
  }
  method correr(cantidadDeMetros){
    energia=energia-(cantidadDeMetros/2)
    return "Tom corrio un total de "+cantidadDeMetros+" metros"
  }
  method puedeCazar(unRaton) {
    return energia >= unRaton.distanciaDeTom()
  }
  method cazarUnRaton(unRaton,distancia) {
    if(self.puedeCazar(unRaton)){
      self.correr(distancia)
      self.comerUnRaton(unRaton)
    }
  }
  method velocidadMaxima()= velocidadMaximaDeTom

  method cantidadEnergia() =energia 
}

object jerry {
  var distancia=15
  var nombreDelRaton="Jerry"
  var edad=2
  var pesoDeJerry = edad*20

  method nombre() = nombreDelRaton
  method edad()=edad
  method peso() = pesoDeJerry
  method distanciaDeTom() =distancia 
  method cumpleAños() {
    edad=edad+1
  }
   method cambiarDistancia(nuevaDistanciaDeTom) {
    distancia=nuevaDistanciaDeTom
  } 
}

object nibbles {
  var distancia= 25
  var nombreDelRaton="Nibbles"
  var pesoDeNibbles=35
 
  method distanciaDeTom() =distancia 
  method cambiarDistancia(nuevaDistanciaDeTom) {
    distancia=nuevaDistanciaDeTom
  } 
  method nombre() =nombreDelRaton 
  method peso() =pesoDeNibbles 
}

object sparks {
  var distancia=40
  var nombreDelRaton="Sparks"
  var pesoDeSparks = 45

  method peso() = pesoDeSparks
  method nombre() = nombreDelRaton
  method distanciaDeTom() =distancia
  method cambiarDistancia(nuevaDistanciaDeTom) {
    distancia=nuevaDistanciaDeTom
  } 
}