import nave.nave

object neo {
    var energia = 100
    method saltar() {
        energia = energia * 0.5
    }
    method vitalidad() {
        return energia * 0.1
    }
    method esElegido() {
        return true
    }
    method subirseALaNave() {
        nave.subirA(self)
    }
    method bajarseDeLaNave() {
        nave.bajarA(self)
    }
}

object morfeo {
    var vitalidad = 8
    var estaCansado = false
    method esElegido() {
        return false
    }
    method saltar() {
        vitalidad = (vitalidad - 1).max(0)
        estaCansado = !estaCansado
    }
    method vitalidad() {
        return vitalidad
    }
    method subirseALaNave() {
        nave.subirA(self)
    }
    method bajarseDeLaNave() {
        nave.bajarA(self)
    }
}

object triniti {
    method vitalidad() {
        return 0
    }
    method esElegido() {
        return false
    }
    method saltar() {
        // console.println("triniti no hace nada") // ahora SÍ hace algo
    } // no hace nada        
    method subirseALaNave() {
        nave.subirA(self)
    }
    method bajarseDeLaNave() {
        nave.bajarA(self)
    }
}
