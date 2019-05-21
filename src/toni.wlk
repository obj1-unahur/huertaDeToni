import plantas.*

object toni {
	const property plantasSembradas = []
	const property plantasCosechadas = []
	var property dinero = 0
	const gastoDiario = 200
	
	method sembrar(planta) {
		plantasSembradas.add(planta)
	}	
	
	method regarLasPlantas() {
		plantasSembradas.forEach { p => p.regar() }
	}
	
	method plantasListasParaCosechar() {
		return plantasSembradas.filter { p => p.estaLista() }
	}
	
	method cosecharTodo() {
		self.plantasListasParaCosechar().forEach { p => self.cosechar(p) }
	}
	
	method cosechar(planta) {
		plantasSembradas.remove(planta)
		plantasCosechadas.add(planta)
	}
	
	method venderCosecha() {
		plantasCosechadas.forEach { p => self.vender(p) }
	}
	
	method vender(planta) {
		dinero += planta.valor()
		plantasCosechadas.remove(planta)
	}
	
	method paraCuantosDiasLeAlcanza() {
		return self.dineroTotal() / gastoDiario
	}
	
	method dineroTotal() {
		return dinero + self.plantasListasParaCosechar().sum { p => p.valor() }
	}
	
	method cuantoHayParaCeliacos() {
		return self.plantasListasParaCosechar()
			.count { p => not p.tieneGluten() }
	}
}
