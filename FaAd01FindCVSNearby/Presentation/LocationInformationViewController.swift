//
//  LocationInformationViewController.swift
//  FaAd01FindCVSNearby
//
//  Created by joe on 6/17/24.
//

import UIKit
import KakaoMapsSDK
import SnapKit

class LocationInformationViewController: BaseMapViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        attribute()
        layout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        // Create and assign a KMViewContainer as the root view
        self.view = KMViewContainer(frame: UIScreen.main.bounds)
        self.mapContainer = self.view as? KMViewContainer
    }
    
    private func attribute() {
        title = "Find CVS Nearby"
        view.backgroundColor = .white
    }
    
    private func layout() {}
    
    override func addViews() {
        let defaultPosition: MapPoint = MapPoint(longitude: 126.978365, latitude: 37.566691)
        let mapviewInfo: MapviewInfo = MapviewInfo(viewName: "mapview", viewInfoName: "map", defaultPosition: defaultPosition)
        
        mapController?.addView(mapviewInfo)
    }
}
