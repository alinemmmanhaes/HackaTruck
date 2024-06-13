//
//  musicas.swift
//  Aula05Hackatruck
//
//  Created by Turma02-1 on 12/06/24.
//

import Foundation


struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var ArrayMusics = [
    Song(id: 1, name: "Love Of My Life", artist: "Harry Styles", capa: "https://i.discogs.com/5A2fpQifwlRS0TuS9QDM9hEuTFPmehNFu57T63s37Ro/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMzgw/Nzg3LTE2NTQ0MDM2/MzctMTI3Ny5qcGVn.jpeg"),
    Song(id: 2, name: "Feather", artist: "Sabrina Carpenter", capa: "https://i1.sndcdn.com/artworks-ZSbg3JCDgKhg-0-t500x500.jpg"),
    Song(id: 3, name: "Billie Bossa Nova", artist: "Billie Eilish", capa: "https://i.scdn.co/image/ab67616d0000b2732a038d3bf875d23e4aeaa84e"),
    Song(id: 4, name: "Little Freak", artist: "Harry Styles", capa: "https://i.discogs.com/5A2fpQifwlRS0TuS9QDM9hEuTFPmehNFu57T63s37Ro/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMzgw/Nzg3LTE2NTQ0MDM2/MzctMTI3Ny5qcGVn.jpeg"),
    Song(id: 5, name: "because i liked a boy", artist: "Sabrina Carpenter", capa: "https://i1.sndcdn.com/artworks-ZSbg3JCDgKhg-0-t500x500.jpg"),
    Song(id: 6, name: "Read Your Mind", artist: "teste", capa: "https://i1.sndcdn.com/artworks-ZSbg3JCDgKhg-0-t500x500.jpg"),
    Song(id: 7, name: "Happier Than Ever", artist: "Billie Eilish", capa: "https://i.scdn.co/image/ab67616d0000b2732a038d3bf875d23e4aeaa84e"),
    Song(id: 8, name: "As It Was", artist: "Harry Styles", capa: "https://i.discogs.com/5A2fpQifwlRS0TuS9QDM9hEuTFPmehNFu57T63s37Ro/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMzgw/Nzg3LTE2NTQ0MDM2/MzctMTI3Ny5qcGVn.jpeg"),
    Song(id: 9, name: "Wildest Dreams", artist: "Taylor Swift", capa: "https://s2-g1.glbimg.com/2tkhJvUEW4k3yHmTMQ1HgBDgnbc=/0x0:1440x1440/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2023/K/X/lDJpx2RmyBojfGfNBTlA/1989-taylors-version.jpg"),
    Song(id: 10, name: "Style", artist: "Taylor Swift", capa: "https://s2-g1.glbimg.com/2tkhJvUEW4k3yHmTMQ1HgBDgnbc=/0x0:1440x1440/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2023/K/X/lDJpx2RmyBojfGfNBTlA/1989-taylors-version.jpg")
]
