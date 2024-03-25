
object casaDePepeYJulian {
	var viveres = 50
	var monto = 0
	var reparaciones = 0
	var cuentaCorriente = 0
	var cuentaConGasto = 0
	
	method depositar(sueldo){
		cuentaCorriente += sueldo
		cuentaConGasto += (sueldo - self.costoPorOperacion())
	}
	
	method gastar(cantidad, cuenta){
		cuenta -= cantidad
	}
	
	method costoPorOperacion() {
		return 20
	}
	
	method hayViveresSuficientes() {
		return viveres > 40
	}
	
	method seRompioAlgoDeValor(precio){
		reparaciones += precio
	}
	
	method reparar(precio){
		reparaciones -= precio
	}
	
	method hayQueHacerReparaciones() {
		return reparaciones > 0
	}
	
	method estaEnOrdenLaCasa() {
		return (not(self.hayQueHacerReparaciones()) and self.hayViveresSuficientes())
	}
	
	
}





