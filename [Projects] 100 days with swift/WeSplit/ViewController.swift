

//
//  ViewController.swift
//  Project1

import UIKit

class ViewController: UITableViewController {
	var pictures = [String]()          // varible is made for the array of pictures
	override func viewDidLoad() {
		super.viewDidLoad()

		title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true

		let fm = FileManager.default   // declares a constant called fm
                                       // assigns that the value returned by FileManager.default
		let path = Bundle.main.resourcePath!  // declares a constant called path
                                              // sets the resourcePath of our apps' bundle
                                              // this is where we can find all the images I add to the app
		let items = try! fm.contentsOfDirectory(atPath: path)
                                              // constant call items, this will be an array collection
                                              // we will call the previous made constant 'path'
		for item in items {
			if item.hasPrefix("nssl") {       // start a loop here to find all the items that start with
                                              // the prefix nssl
            
				pictures.append(item)         
			}
		}
        
        print(pictures)
	}

}
