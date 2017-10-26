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
        x = 250
        dx = 250
        
        canvas.drawShapesWithBorders = false 
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        x += 2
        dx += -2
        
        // Draw an ellipse in the middle of the canvaS
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x , centreY: 250, width: 50, height: 50)
        
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: dx, centreY: 150, width: 50, height: 50)
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x , centreY: 50, width: 50, height: 50)
        
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x , centreY: 450, width: 50, height: 50)
        
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: dx, centreY: 350, width: 50, height: 50)
    }
    
}
