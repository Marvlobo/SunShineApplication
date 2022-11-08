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
        
        cameraService.start(delegate: context.coordinator){
             err in
            if let err = err{
                didFinishProcesseingPhoto(.failure(err))
                return
            }
        }
        let viewController = UIViewController()
        viewController.view.backgroundColor = .black
        viewController.view.layer.addSublayer(cameraService.previewLayer)
        cameraService.previewLayer.frame = viewController.view.bounds
        return viewController
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self, didFinishProcessingPhoto: didFinishProcesseingPhoto)
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
        
        func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto
                         photo: AVCapturePhoto, error: Error?) {
            if let error = error{
                didFinishProcesseingPhoto(.failure(error))
                return
            }
            didFinishProcesseingPhoto(.success(photo))
       
        }
    }
}
