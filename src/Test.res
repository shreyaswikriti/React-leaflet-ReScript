module MapContainer = Mapbinding.MapContainer
module TileLayer = Mapbinding.TileLayer
module Popup = Mapbinding.Popup
module Marker = Mapbinding.Marker
//@import "./Test.css";
%%raw(`

import './Test.css';
import 'leaflet/dist/leaflet.css';
`)

module Map = {
type t = {
    zoom: int,
    minZoom:int,
    center: LatLng.t,
    position: LatLng.t,
    position1: LatLng.t,
    scrollWheelZoom: bool,
    attribution:string,
    url:string,
    maxBound:LatLng.bound,
  }
}
let content = {
     { Map.zoom: 1,
      center: {
        lat: 0.0,
        lng: 0.0,
        
      },
       position1: {
        lat: 51.505,
        lng:  -0.11,
       
      },
      position: {
        lat: 51.505,
        lng:  -0.09,
        
      },
      maxBound:{
        mib:{lat:90.0,
        lng:-180.0,},
        mab:{lat:-90.0,
        lng:180.0,}
      },
      minZoom:1,
      scrollWheelZoom:true,
      attribution:"<a href=\"http://osm.org/copyright\">OpenStreetMap</a> contributors",
      url:"https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
     }
    }
@react.component
let make = () => { <div id="m">
    <div> {React.string("Map")} </div>
<div >
     <MapContainer center=content.center zoom=content.zoom scrollWheelZoom=content.scrollWheelZoom maxBounds=content.maxBound minZoom=content.minZoom id="mapid">
     <TileLayer attribution=content.attribution url=content.url noWrap=true />

              <Marker position=content.center >
              <Popup>
     {React.string(" A pretty CSS3 popup. <br /> Easily customizable.")}
    </Popup>
    </Marker>
     <Marker position=content.position >
              <Popup>
     {React.string(" Another one")}
    </Popup>
    </Marker>
            </MapContainer>
            </div>
    </div>

}

