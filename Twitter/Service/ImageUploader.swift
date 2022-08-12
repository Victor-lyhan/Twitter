//
//  ImageUploader.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/11.
//

import Firebase
import UIKit
import FirebaseStorage

struct imageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void){
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
//        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        let ref = Storage.storage().reference().child("profile_image").child(filename)
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: Failed to upload image with error: \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else { return }
                completion(imageUrl)
            }
        }
    }
}

