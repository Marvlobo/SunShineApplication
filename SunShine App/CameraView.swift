//
//  CameraView.swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/7/22.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewControllerRepresentable{
    typealias UIViewControllerType = UIViewController
    
    let cameraService: CameraService
    let didFinishProcesseingPhoto: (Result<AVCapturePhoto, Error>) -> ()
    
    
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        return viewController
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
    class Coordinator: NSObject, AVCapturePhotoCaptureDelegate{
        let parent: CameraView
        private var didFinishProcesseingPhoto: (Result<AVCapturePhoto, Error>) -> ()
        
        init(_ parent: CameraView,
             didFinishProcessingPhoto: @escaping (Result<AVCapturePhoto, Error>)->()) {
            self.parent = parent
            self.didFinishProcesseingPhoto = didFinishProcessingPhoto
        }
    }
}
