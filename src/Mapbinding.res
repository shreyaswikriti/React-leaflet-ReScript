module MapContainer = {
  @module("react-leaflet") @react.component
  external make: (
    ~className: string=?,
    ~center: LatLng.t,
    ~zoom: int,
    ~zoomControl:bool=?,
    ~scrollWheelZoom:bool,
    ~id:string,
    ~minZoom:int,
    ~maxBounds:LatLng.bound,
    ~children: React.element,
  ) => React.element = "MapContainer"
}
module TileLayer = {
  @module("react-leaflet") @react.component
  external make: (~attribution: string=?,~noWrap:bool, ~url: string) => React.element = "TileLayer"
  
}

module Marker = {
  @module("react-leaflet") @react.component
  external make: (~position: LatLng.t, ~children: React.element=?) => React.element = "Marker"
}
module Popup = {
  @module("react-leaflet") @react.component
  external make: (
    ~maxWidth: int=?,
    ~minWidth: int=?,
    ~maxHeight: int=?,
    ~autoPan: bool=?,
    ~autoPanPaddingTopLeft: Point.t=?,
    ~autoPanPaddingBottomRight: Point.t=?,
    ~autoPanPadding: Point.t=?,
    ~keepInView: bool=?,
    ~closeButton: bool=?,
    ~autoClose: bool=?,
    ~closeOnEscapeKey: bool=?,
    ~closeOnClick: bool=?,
    ~className: string=?,
    ~children: React.element=?,
  ) => React.element = "Popup"
}
