
object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method sabor() = "frutilla"
	method libreDeGluten() = false
	method recibirMordisco() {
		peso = (peso * 0.8) - 1
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method sabor() = "chocolate"
	method libreDeGluten() = true 
	method recibirMordisco() {
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method sabor() = "frutilla"
	method libreDeGluten() = true
	method recibirMordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method sabor() = "naranja"
	method libreDeGluten() = true
	method recibirMordisco() {
		peso = 2.max(peso * 0.9)
	}

}

object oblea {
	
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method sabor() = "vainilla"
	method libreDeGluten() = false
	method recibirMordisco() {
		if(peso > 70) {peso = peso * 0.5} else {peso = peso * 0.75}
	}
}

object chocolatin {
	
	var pesoInicial
	var peso
	
	method precio() = pesoInicial * 0.5
	method peso() = peso
	method sabor() = "chocolate"
	method libreDeGluten() = false
	method recibirMordisco() {
		peso = peso - 2
	}
	method setPesoInicial(setPeso) {
		pesoInicial = setPeso
		peso = setPeso
	}
}

object golosinaBaniada {
	var golosinaBase
	var pesoBanio = 4
	
	method elegirGolosinaBase(unaGolosina) {
		golosinaBase = unaGolosina
	}
	method precio() = golosinaBase.precio() + 4
	method peso() = golosinaBase.peso() + pesoBanio
	method sabor() = golosinaBase.sabor()
	method libreDeGluten() = golosinaBase.libreDeGluten()
	method recibirMordisco() {
		golosinaBase.recibirMordisco()
		pesoBanio = 0.max(pesoBanio-2) 
	}
}

object tuttiFrutti {
	const sabores = ["frutilla","chocolate","naranja"]
	var property libreDeGluten = true
	var property peso = 5
	var cantMordiscos = 0
	
	method precio() = if (libreDeGluten) {7} else {10}
	method sabor() = sabores.get(cantMordiscos%sabores.size())
	method recibirMordisco() {
		cantMordiscos ++
	}
}