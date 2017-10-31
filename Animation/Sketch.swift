import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
      dx = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        if x > 500 {
            dx = -2
        }
     
        if x < 0 {
            dx = 2
        }
        
        canvas.fillColor = Color.black
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x + 1, centreY: 250, width: 50, height: 50)
        
    }
    
}
