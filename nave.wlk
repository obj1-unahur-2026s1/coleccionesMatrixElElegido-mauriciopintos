
import matrix.*

object nave {
    const property pasajeros = [neo,morfeo,triniti]
    
    method subirA(unPasajero) {
        if(self.estaEnLaNave(unPasajero)) {
            self.error("El pasajero ya está en la nave")
        }
        pasajeros.add(unPasajero)
    }
    
    method bajarA(unPasajero) {
        if(!self.estaEnLaNave(unPasajero)) {
            self.error("El pasajero NO está en la nave")
        }
        pasajeros.remove(unPasajero)
    }

    method estaEnLaNave(unPasajero) {
        return pasajeros.contains(unPasajero)
    }

    method elDeMayorVitalidad() {
        return pasajeros.max({p => p.vitalidad()})
    }
    method elDeMenorVitalidad() {
        return pasajeros.min({p => p.vitalidad()})
    }

    method estaElElegido() {
        return pasajeros.any({p => p.esElegido()})
    }

    method cantidadDePasajeros() {
        return pasajeros.size()
    }

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.forEach({p => self.bajarA(p)})
        // esta también sirve pasajeros.forEach({p => p.bajarseDeLaNave()})
        // más facil, pasajeros.clear()
    }

    method acelerar() {
        self.losQueNoSonElElegido().forEach({
            p => p.saltar()
        })
    }
    method losQueNoSonElElegido() {
        return pasajeros.filter({
            p => !p.esElegido()
        })
    }
    method estaEquilibrada() {
        return 
        self.elDeMayorVitalidad().vitalidad() <= 
        self.elDeMenorVitalidad().vitalidad() * 2
    }

    method pasajerosValiosos() {
        return pasajeros.filter({
            p => p.vitalidad() >= 5
        })
    }

    method hayAlgunoAlHorno() {
        return pasajeros.any({
            p => p.vitalidad() == 0
        })
    }

    method todosPuedenContraUnAgente() {
        return pasajeros.all({
            p => p.vitalidad() > 2
        })
    }

    method vitalidadPromedio() {
        return pasajeros.average({
            p => p.vitalidad()
        })
    }

    method cuantosTienenVitalidadPar() {
        return pasajeros.count({
            p => p.vitalidad().even()
        })
    }

    method simulacroDeCombate() {
        pasajeros.forEach({
            p=>p.saltar() p.saltar() p.saltar()
        })
    }

    method vitalidadesDePasajeros() {
        return pasajeros.map({
            p => p.vitalidad()
        })
    }

    method ordenarDeMenorAMayorVitalidad() {
        pasajeros.sortBy({
            p1,p2 => p1.vitalidad() < p2.vitalidad()
        })
    }
}