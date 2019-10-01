import Rodados.*
class Pedidos {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadPasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida() { return distanciaARecorrer / tiempoMaximo }
	method satisfacePedido(auto) {
		var velocidad = auto.velocidadMaxima() > self.velocidadRequerida() + 9 
		var capacidad = auto.capacidad() >= self.cantidadPasajeros() 
		
		return velocidad and capacidad and not coloresIncompatibles.all{color => color != auto.color()}
	}
	method fafafa(auto) {
			return coloresIncompatibles.filter{color => color== auto.color()}
		}
}
