//
//  ViewController.swift
//  MyStoryProject
//
//  Created by Claudio Micieli on 1/19/23.
//

import UIKit

class ViewController: UIViewController {
    
    let aboutBackstory = Gutsdetail(image: UIImage(named: "gutsBackstory")!, detail: "Berserk (Japanese: ベルセルク, Hepburn: Beruseruku) is a Japanese manga series written and illustrated by Kentaro Miura. Set in a medieval Europe-inspired dark fantasy world, the story centers on the characters of Guts, a lone swordsman, and Griffith, the leader of a mercenary band called the Band of the Hawk.")
    let mangaAdpt = Gutsdetail(image: UIImage(named: "gutsMangaAdpt")!, detail: "Miura premiered a prototype of Berserk in 1988. The series began the following year in the Hakusensha's now-defunct magazine Monthly Animal House, which was replaced in 1992 by the semimonthly magazine Young Animal, where Berserk has continued its publication. Berserk was adapted into a 25-episode anime television series by OLM, which covered the Golden Age story arc, and was broadcast from October 1997 to March 1998.")
    let funFacts = Gutsdetail(image: UIImage(named: "gutsFun")!, detail: "Berserk has influenced a wide variety of media: making the loner with a big sword trope extremely popular. It is seen over and over again in mangas/animes like Bleach, Naruto, Ruroni Kenshin, Fairy Tail, Inuyasha, Shaman King, and many more. Games from the Dark Souls series were also heavily inspired by Berserk, with the primary example being Knight Artorias from Dark Souls.")
    
    var guts: [Gutsdetail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guts = [aboutBackstory, mangaAdpt, funFacts]
    }
    
    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view{
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController{
            
           //Top button 0, Middle button 1, Bottom button 2
               if tappedView.tag == 0 {
                   detailViewController.guts = guts[0]
               } else if tappedView.tag == 1 {
                   detailViewController.guts = guts[1]
               } else if tappedView.tag == 2 {
                   detailViewController.guts = guts[2]
               }
        }
    }
    
}

/*
 override func prepare(for segue: UIStoryboardSegue, sender: Any?)
 {
     if segue.identifier == "detailSegue",
        let tappedView = sender as? UIButton,
        let detailViewController = segue.destination as? DetailViewController{
         
        //Top button 0, Middle button 1, Bottom button 2
            if tappedView.currentTitle == "About / BackStory" {
                detailViewController.guts = guts[0]
            } else if tappedView.currentTitle == "Manga and Anime Adaptations" {
                detailViewController.guts = guts[1]
            } else if tappedView.currentTitle == "Fun Facts" {
                detailViewController.guts = guts[2]
            }
     }
 }
*/
