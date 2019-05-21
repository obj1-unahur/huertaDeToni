class Maiz {
	var esBebe = true
	
	method regar() { esBebe = false }
	method estaLista() { return not esBebe }
	method valor() { return 150 }
}

class Trigo {
	var etapa = 0
	const etapaMaxima = 3
	
	method regar() {
		etapa++
		if (etapa > etapaMaxima) { etapa = 0 } 
	}
	
	method estaLista() { return etapa >= 2 }
	method valor() { return (etapa - 100) * 2 }
}

class Tomaco {
	method regar() {}
	method estaLista() { return true }
	method valor() { return 80 }
}