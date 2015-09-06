//
//  GameScene.swift
//  Swifty Ninja
//
//  Created by Jason Eng on 9/5/15.
//  Copyright (c) 2015 EngJason. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var gameScore: SKLabelNode!
    var score: Int = 0{
        didSet {
            gameScore.text = "Score: \(score)"
        }
    }
    
    var livesImages = [SKSpriteNode]()
    var lives = 3
    
    override func didMoveToView(view: SKView) {
        let background = SKSpriteNode(imageNamed: "sliceBackground")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .Replace
        addChild(background)
        
        physicsWorld.gravity = CGVector(dx: 0, dy: -6)
        physicsWorld.speed = 0.85
        
        createScore()
        createLives()
        createSlices()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {

    }
   
    override func update(currentTime: CFTimeInterval) {
    
    }
}
