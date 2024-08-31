//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var saldo = 0

  method dinero() {
    return 0.max(saldo) // saldo.max(0)
  }

  method deuda() {
    return saldo.min(0).abs()
  }

  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method sueldo() {
    return sueldo
  }

  method cobrarSueldo() {
    saldo += sueldo
  }

  method gastar(cuanto) {
    saldo -= cuanto
  }
}

object baigorria {
    var cantidadVendido = 0
    var totalCobrado = 0

    method vender(cantidad) {
      cantidadVendido = cantidadVendido + cantidad
    }

    method cantidadVendido() {
      return cantidadVendido
    }

    method sueldo() {
      return 15 * cantidadVendido
    }

    method totalCobrado() {
      return totalCobrado
    }

    method cobrarSueldo() {
      totalCobrado += self.sueldo()
      cantidadVendido = 0
    }

  
}

object gimenez {
  var fondo = 300000

  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    empleado.cobrarSueldo()
  }

  method fondo() {
    return fondo
  }
}


