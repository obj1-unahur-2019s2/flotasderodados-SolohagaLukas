import Rodados.*
class Dependencia {
	var flota = []
	var property empleados
	
	method agregarAFlota(rodado) { flota.add(rodado) }
	method quitarDeFlota(rodado) { flota.remove(rodado) }
	method pesoTotalFlota() { 
		return flota.sum({ auto => auto.peso() })
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and 
		flota.all({ auto => auto.velocidadMaxima() >= 100 })
	}
	method capacidadTotalEnColor(color) {
		var totalEnColor = flota.filter({ auto => auto.color() == color })
		return totalEnColor.sum({ auto => auto.capacidad() })
	}
	method colorDelRodadoMasRapido() {
		var rodadoMasRapido = flota.max({ auto => auto.velocidadMaxima() }) 
		return rodadoMasRapido.color()
	}
	method capacidadFaltante() {
		return empleados - flota.sum({ auto => auto.capacidad() })
	}	
	method esGrande() {
		return empleados > 39 and flota.size() > 4
	}
}
