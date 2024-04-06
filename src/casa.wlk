
object casaDePepeYJulian {
	var viveres = 50
	var monto = 0
	var reparaciones = 0
	var property cuentaAsignada = cuentas.cuentaConGastoPrincipal()
	
	method hayViveresSuficientes() {
		return viveres > 40
	}
	
	method reponerViveresPor(porcentaje) {
		viveres += porcentaje
	}
	
	method seRompioAlgoDeValor(precio){
		reparaciones += precio
	}
	
	method reparar(){
		cuentaAsignada -= reparaciones
		reparaciones -= reparaciones
	}
	
	method hayQueHacerReparaciones() {
		return reparaciones > 0
	}
	
	method estaEnOrdenLaCasa() {
		return (not(self.hayQueHacerReparaciones()) and self.hayViveresSuficientes())
	}
	
	//////////////////////////////////////////////////////////////////////////////////
	
	method minimoEIndispensable(calidad) {
		if (viveres. < 40) {cuentaAsignada -= viveres.rem(40) * calidad}
		else {self.full()}
	}
	
	method full() {
		
	}

}

object manteniendoLaCasa {
	
}

object cuentas {
	
	var cuentaCorriente = 500  //secundaria     // costo por opeacion 0
	var cuentaConGasto = 0     //principal      // costo por operacion 50
	
	
	method cuentaCorrienteSecundaria() {
		return cuentaCorriente
	}
	
	method cuentaConGastoPrincipal() {
		return cuentaConGasto
	}
	
	method cuentaCombinada(){
		return cuentaConGasto + cuentaCorriente
	}
	
	method depositarCuentaCombinada(cantidad) {
		self.depositarSecundaria(cantidad)
	}
	
	method depositarPrincipal(sueldo){
		cuentaCorriente += sueldo 
	}
	
	method depositarSecundaria(sueldo){
		cuentaConGasto += (sueldo - self.costoPorOperacion())
	}
	
	method extraer(cantidad){ 
		return if (self.cuentaConGastoPrincipal() >= cantidad) {cuentaConGasto -= cantidad} //en la condidion decidi usar el metodo por que ya lo tenia otra forma era comparar con la variable "cunetacongasto"
			else {cuentaCorriente -= cantidad}
	} 
	
	method costoPorOperacion() {
		return 50
	}
}





