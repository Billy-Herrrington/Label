//
//  AddViewController.swift
//  Application
//
//  Created by mai on 19.10.2021.
//

import UIKit

class AddViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var clothersTextField: UITextField!
    
    @IBOutlet var IMG1: UIImageView!
    @IBOutlet var IMG2: UIImageView!
    
    let imagepicker1 = UIImagePickerController()
    let imagepicker2 = UIImagePickerController()
    
    let clothers = ["Джинси", "Штани", "Сукня", "Пальто", "Туніки", "Куртки", "Жакети", "Футболки"]
    
    
    var clothersPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clothersTextField.inputView = clothersPickerView
        clothersPickerView.delegate = self
        clothersPickerView.dataSource = self
        clothersPickerView.tag = 1
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonUploadIMG(_ sender: Any) {
        imagepicker1.delegate = self
        imagepicker1.allowsEditing = true
        imagepicker1.sourceType = UIImagePickerController.SourceType.savedPhotosAlbum
        self.present(imagepicker1, animated: true, completion: nil)
    }
    
    @IBAction func buttonUploadLabel(_ sender: Any) {
        imagepicker2.delegate = self
        imagepicker2.allowsEditing = true
        imagepicker2.sourceType = UIImagePickerController.SourceType.savedPhotosAlbum
        self.present(imagepicker2, animated: true, completion: nil)
    }
    
    
    @IBAction func didTapSaveButton(_ sender: Any) {
 //       if let titleText = titleField.text, !titleText.isEmpty
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : AnyObject]) {
//        imagepicker1.dismiss(animated: true, completion: nil)
//        self.IMG1.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//
//        imagepicker2.dismiss(animated: true, completion: nil)
//        self.IMG2.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            IMG1.image = image
            IMG2.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}

extension AddViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return clothers.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return clothers[row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            clothersTextField.text = clothers[row]
            clothersPickerView.resignFirstResponder()
        default:
            return
        }
    }
}

