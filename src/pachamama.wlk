object pachamama {
	var agradecimiento = 10 
	
	method llover() { agradecimiento += 5 }
	method tirarBasura() { agradecimiento -= 10 }
	method fumigar() { agradecimiento = 0 }
	method abonar() { agradecimiento *= 2 }
	
	method estaAgradecida() { return agradecimiento >= 10 }
}
