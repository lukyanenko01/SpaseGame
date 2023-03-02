//
//  GameScene.swift
//  SpaceGame
//
//  Created by Vladimir Lukyanenko on 02.03.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let spaceShip = SKSpriteNode(imageNamed: "spaceShip")
        
//        spaceShip.position = CGPoint(x: 200, y: 200)
        
        addChild(spaceShip)
    }
}
