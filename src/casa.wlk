
object casaDePepeYJulian {
	var viveres = 50
	var monto = 0
	var reparaciones = 0
	var cuentaCorriente = 0 //secundaria
	var cuentaConGasto = 0 //primaria
	var cuentaCombinada = 0
	
	method cuentaCombinada(){
		return cuentaConGasto + cuentaCorriente
	}
	
	method depositarCC(sueldo){ //cuenta debe ser un objeto
		cuentaCorriente += sueldo //cuenta.depositar
	}
	
	method depositarCCG(sueldo){
		cuentaConGasto += (sueldo - self.costoPorOperacion())
	}
	
	method cuentaCorriente() {
		return cuentaCorriente
	}
	
	method cuentaConGasto() {
		return cuentaConGasto
	}
	
	method gastar(cantidad){ 
		return if (cuentaConGasto >= cantidad) {cuentaConGasto -= cantidad} //creo que es asi, elige dependiendo del saldo disponible
			else {cuentaCorriente -= cantidad}
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





