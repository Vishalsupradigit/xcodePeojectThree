//
//  UploadPhoto.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 06/02/25.
//
 
 
import SwiftUI
import UIKit
 
struct UploadPhoto: View {
    @State private var selectedImages: [UIImage] = []  // Array to store multiple images
    @State private var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var showActionSheet = false
    @State private var longPressedIndex: Int? = nil  // To track which image is long-pressed
    
    
    
    @State private var showPhotoAlert = false
 
 
    var body: some View {
        VStack {
            Text("Upload Photos (Max 6)")
                .font(.title)
                .padding()
            
            // Display multiple images in a grid
            LazyVGrid(columns: [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))], spacing: 16) {
                ForEach(selectedImages.indices, id: \.self) { index in
                    ZStack(alignment: .topTrailing) {
                        Image(uiImage: selectedImages[index])
                            .resizable()
                        //    .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 1))
                            .onLongPressGesture(minimumDuration: 0.5) {
                                withAnimation {
                                    longPressedIndex = index  // Show delete button for this image
                                }
                            }
                            .background(.green)
 
                        // Delete button shown only for the long-pressed image
                        if longPressedIndex == index {
                            Button(action: {
                                withAnimation {
                                    selectedImages.remove(at: index)
                                    longPressedIndex = nil  // Hide delete button
                                }
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.red)
                                    .background(Color.white.opacity(0.7))
                                    .clipShape(Circle())
                            }
                            .padding(2)
                        }
                    }
                }
            }
            .padding()
 
            // "Add Photo" button (only if less than 6 images)
            if selectedImages.count < 6 {
                
                VStack {
                            Button(action: {
                                showPhotoAlert = true
                            }) {
                                Text("Add Photo")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                            }
 
                            .confirmationDialog("Add Photo!", isPresented: $showPhotoAlert, titleVisibility: .visible) {
                                Button("Take Photo") {
                                    self.sourceType = .camera
                                    self.showImagePicker = true
                                }
                                Button("Choose from Gallery") {
                                    self.sourceType = .photoLibrary
                                    self.showImagePicker = true
                                }
                                Button("Cancel", role: .cancel) {}
                            }
                        }
                
            }
            
            
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(selectedImage: Binding(get: {
                nil
            }, set: { image in
                if let image = image, selectedImages.count < 6 {
                    selectedImages.append(image)
                }
            }), sourceType: self.sourceType)
        }
    }
}
 
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    var sourceType: UIImagePickerController.SourceType
 
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
 
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
}
 
struct UploadPhoto_Previews: PreviewProvider {
    static var previews: some View {
        UploadPhoto()
    }
}
