import golosinas.*

object mariano {
		const golosinas = []
		
		method comprar(golosina) {golosinas.add(golosina)}
		method desechar(golosina) {golosinas.remove(golosina)}
		method cantidadDeGolosinas() = golosinas.size()
		method tieneLaGolosina(golosina) = golosinas.contains(golosina)
		method probarGolosinas() {golosinas.forEach({g=>g.recibirMordisco()})}
		method hayGolosinaSinTACC() {golosinas.any({g=>g.libreDeGluten()})}
		method preciosCuidados() {golosinas.all({g=>g.precio()>=10})}
		method golosinaDeSabor(sabor) = golosinas.find({g=>g.sabor() == sabor})
		method golosinasDeSabor(sabor) = golosinas.filter({g=>g.sabor() == sabor})
		method sabores() = golosinas.map({g=>g.sabor()}).asSet()
		method golosinaMasCara() = golosinas.max({g=>g.precio()})
		method pesoGolosinas() = golosinas.map({g=>g.peso()}).sum()
		
		method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas.asSet())
		method gustosFaltantes(saboresDeseados) = saboresDeseados.difference(self.sabores())
}
