object gimenez {
	var dinero = 300000
	method pagar( empleado ) { dinero -= empleado.sueldo()
		 empleado.cobrarsueldo()
	}
	method saldo() { return dinero }
}


object baigorria {
	var venta=0
	var montoEmpanada=15
	method venderEmpanada(cantidad) {venta=cantidad*montoEmpanada}
 	method totalCobrado()= venta + self.sueldo()
	method sueldo() {return venta}
	method cobrarsueldo(){return venta}
}

object galvan {
	var totalDinero = 0
	var totalDeuda = 0
	var sueldo = 15000
	method sueldo() { return sueldo }
	method cambiarSueldo(cuanto) { sueldo = cuanto }
	method cobrarSueldo(){
		if (totalDeuda>0){
			var cuantoCancelar = self.sueldo().min(totalDeuda)
			var cuantoGuardar = self.sueldo() - cuantoCancelar
			totalDeuda = totalDeuda - cuantoCancelar
			totalDinero = totalDinero + cuantoGuardar
		}else{
			totalDinero = totalDinero + self.sueldo()
		}
	}

	method gastar(cuanto){
		totalDinero=totalDinero-cuanto
	}
	method totalDeuda(){
		return totalDeuda
	}
	method totalDinero(){
		return totalDinero
	}
}