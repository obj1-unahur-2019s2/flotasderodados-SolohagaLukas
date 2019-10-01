class ChevroletCorsa {
	var property color
	
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso() { return 1300 }
}

class RenaultKwid {
	var property tieneTanque
	
	method capacidad() { 
		if (tieneTanque) { return 3 }
		else { return 4 }
	}
	method velocidadMaxima() { 
		if (tieneTanque) { return 120 }
		else { return 110 }
	}
	method peso()  { 
		if (tieneTanque) { return 1350 }
		else { return 1200 }
	}
	method color() { return azul }
}

object trafic {
	var property interior
	var property motor
	 
	method capacidad() { return interior.capacidad() }
	method velocidadMaxima() { return motor.velocidadMaxima() }
	method peso()  { return 4000 + interior.peso() + motor.peso() }
	method color() { return blanco }
}

object comodo {
	method capacidad() { return 5 }
	method peso() { return 700 }
}

object popular {
	method capacidad() { return 12 }
	method peso() { return 1000 }
}

object pulenta {
	method peso() { return 800 }
	method velocidadMaxima() { return 130 }
}

object bataton {
	method peso() { return 500 }
	method velocidadMaxima() { return 80 }
}

class AutosEspeciales {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
}

object azul {}
object blanco {}
object verde {}
object beige {}
object rojo {}
object negro {}
