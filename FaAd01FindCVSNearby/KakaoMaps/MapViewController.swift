//
//  MapViewController.swift
//  FaAd01FindCVSNearby
//
//  Created by joe on 6/18/24.
//

import UIKit
import KakaoMapsSDK
import SnapKit

class MapViewController: BaseMapViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        // Create and assign a KMViewContainer as the root view
        self.view = KMViewContainer(frame: UIScreen.main.bounds)
        self.mapContainer = self.view as? KMViewContainer
    }
    
    override func addViews() {
        let defaultPosition: MapPoint = MapPoint(longitude: 126.978365, latitude: 37.566691)
        let mapviewInfo: MapviewInfo = MapviewInfo(viewName: "mapview", viewInfoName: "map", defaultPosition: defaultPosition)
        
        mapController?.addView(mapviewInfo)
    }
}
