#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    [self addObstacle];
    // your code here
}

-(void)update:(CCTime)delta
{
    character = (Character *)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    // put update code here
}

// put new methods here

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

@end
