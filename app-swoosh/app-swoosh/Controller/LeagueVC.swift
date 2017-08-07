//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Ethan Malenchek on 8/6/17.
//  Copyright © 2017 Ethan Malenchek. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBOutlet weak var NextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leaguetype: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leaguetype: "womens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leaguetype: "coed")
    }
    
    func selectLeague(leaguetype: String) {
        player.desiredLeague = leaguetype
        NextBtn.isEnabled = true
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
