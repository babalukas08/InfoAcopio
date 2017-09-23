//
//  GatheringCdmxModel.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 23/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//

import ObjectMapper

class GatheringCdmxModel:  Mappable , CustomStringConvertible {
    
    var confirmado_por: String = ""
    var last_update: String = ""
    var id_status: Int = 0
    var descriptionPlace: String = ""
    var contact: String = ""
    var cel_Phone: String = ""
    var region: String = ""
    var colonia: String = ""
    var reference: String = ""
    var address: String = ""
    var url_maps: String = ""
    var horario: String = ""
    var req_transporte: String = ""
    var send_viveres: String = ""
    var horarios_salida: String = ""
    var necesitan: String = ""
    var exceso_viveres: String = ""
    var capacidad_personas: String = ""
    var notes: String = ""
    var s19: String = ""
    var fechas_19s: String = ""
    var lat: Double = 0.0
    var long: Double = 0.0
    
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        confirmado_por <- map["confirmado_por"]
        last_update <- map["last_update"]
        id_status <- map["id_status"]
        descriptionPlace <- map["description"]
        contact <- map["contact"]
        cel_Phone <- map["cel_Phone"]
        region <- map["region"]
        colonia <- map["colonia"]
        reference <- map["reference"]
        address <- map["address"]
        url_maps <- map["url_maps"]
        horario <- map["horario"]
        req_transporte <- map["req_transporte"]
        send_viveres <- map["send_viveres"]
        horarios_salida <- map["horarios_salida"]
        necesitan <- map["necesitan"]
        exceso_viveres <- map["exceso_viveres"]
        capacidad_personas <- map["capacidad_personas"]
        notes <- map["notes"]
        s19 <- map["s19"]
        fechas_19s <- map["fechas_19s"]
        lat <- map["lat"]
        long <- map["long"]
    }
    
    
    func getCelphone() -> Int {
        return !self.cel_Phone.isEmpty ? Int(self.cel_Phone)! : 0
    }
    var description: String {
        return "OrderReviewsRequestModel:{\(confirmado_por) \(last_update)}"
    }
}
