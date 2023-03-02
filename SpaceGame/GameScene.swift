//
//  GameScene.swift
//  SpaceGame
//
//  Created by Vladimir Lukyanenko on 02.03.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var spaceShip: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        spaceShip = SKSpriteNode(imageNamed: "spaceShip")
        addChild(spaceShip)
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        let background = SKSpriteNode(imageNamed: "background")
        background.size = CGSize(width: width, height: height)
        addChild(background)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            
            let touchLocation = touch.location(in: self)
            
            let moveAction = SKAction.move(to: touchLocation, duration: 1.0)
            spaceShip.run(moveAction)
            
        }
    }
    
    
    
}
