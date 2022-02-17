//
//  TableViewController.swift
//  TrackList
//
//  Created by Максим Хабиров on 17.02.2022.
//

import UIKit

class TrackListViewController: UITableViewController {
    
    private var trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        
        let track = trackList[indexPath.row]
        
        var conten = cell.defaultContentConfiguration()
        conten.text = track.song
        conten.secondaryText = track.artist
        conten.image = UIImage(named: track.title)
        conten.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = conten
        
        return cell
    }
}

// MARK: - Table view delegate
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        80
//    }


// MARK: - Navigation
func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
}
