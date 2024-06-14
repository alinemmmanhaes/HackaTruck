//
//  Location.swift
//  Aula06Hackatruck
//
//  Created by Turma02-1 on 13/06/24.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var ArrayPaises = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.3166), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
    Location(name: "Canadá", coordinate: CLLocationCoordinate2D(latitude: 60, longitude: -95), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/305px-Flag_of_Canada_%28Pantone%29.svg.png", description: "O Canadá é um país norte-americano que se estende desde os EUA, no sul, até o Círculo Polar Ártico, no norte. Entre suas grandes cidades estão a gigantesca Toronto; Vancouver, centro cinematográfico da costa oeste; Montreal e Québec City, que falam francês; e a capital, Ottawa. As vastas regiões de natureza selvagem do Canadá compreendem o Parque Nacional de Banff, repleto de lagos nas Montanhas Rochosas. Abriga também as Cataratas do Niágara, um famoso conjunto de enormes cachoeiras."),
    Location(name: "Dinamarca", coordinate: CLLocationCoordinate2D(latitude: 56, longitude: 10), flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtMps5ZezJ33deuEHeHxkT8xHT3ZuVlU4axQ&s", description: "A Dinamarca é um país escandinavo que abrange a península Jutlândia e várias ilhas. A nação é ligada à Suécia pela Ponte do Øresund. Copenhague, sua capital, abriga palácios reais e o colorido porto de Nyhavn, além do parque de diversões Tivoli e da estátua de A Pequena Sereia. Odense é a cidade natal do escritor Hans Christian Andersen, com um centro medieval de ruas de paralelepípedos e casas no estilo enxaimel."),
    Location(name: "Austrália", coordinate: CLLocationCoordinate2D(latitude: -27, longitude: 133), flag: "https://s2.static.brasilescola.uol.com.br/be/2022/10/bandeira-da-australia.jpg", description: "A Austrália é um país continental cercado pelos oceanos Índico e Pacífico. Suas principais cidades, Sydney, Brisbane, Melbourne, Perth e Adelaide, são costeiras. Sua capital, Camberra, não é litorânea. O país é conhecido pela Sydney Opera House, pela Grande Barreira de Coral, pelo vasto deserto interior chamado Outback e por espécies animais únicas, como cangurus e ornitorrincos."),
    Location(name: "Tailândia", coordinate: CLLocationCoordinate2D(latitude: 13.73, longitude: 101.2616691), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/255px-Flag_of_Thailand.svg.png", description: "A Tailândia é um país do Sudeste Asiático conhecido pelas praias tropicais, pelos palácios reais suntuosos, pelas ruínas antigas e pelos templos ornamentados com figuras de Buda. Bangcoc, a capital, tem uma paisagem urbana ultramoderna que contrasta com comunidades tranquilas à beira de canais e com os emblemáticos templos de Wat Arun e Wat Pho, além do Templo do Buda de Esmeralda (Wat Phra Kaew). Entre os balneários próximos, estão o movimentado Pattaya e o elegante Hua Hin.")
]
