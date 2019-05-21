import pachamama.*

class Maiz {
	var esBebe = true
	
	method regar() { esBebe = false }
	method estaLista() { return not esBebe }
	method valor() { return if (pachamama.estaAgradecida()) { 180 } else { 150 } }
	method tieneGluten() = false
}

class Trigo {
	var etapa = 0
	const etapaMaxima = 3
	
	method regar() {
		if (pachamama.estaAgradecida()) { etapa += 2 } else { etapa++ }
		if (etapa > etapaMaxima) { etapa = 0 } 
	}
	
	method estaLista() { return etapa >= 2 }
	method valor() { return (etapa - 100) * 2 }
	method tieneGluten() = true
}

class Tomaco {
	method regar() {}
	method estaLista() { return not pachamama.estaAgradecida() }
	method valor() { return 80 }
	method tieneGluten() = false
}