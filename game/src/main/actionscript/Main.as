package {
    import citrus.core.starling.StarlingCitrusEngine;
import citrus.core.starling.ViewportMode;

import flash.display3D.Context3DProfile;

import flash.events.Event;


[SWF(width="640", height="960", frameRate="60", backgroundColor="#000000")]
public class Main extends StarlingCitrusEngine {


    public function Main() {
        _baseWidth = Cnst.BASE_WIDTH;
        _baseHeight = Cnst.BASE_HEIGHT;
        _viewportMode = ViewportMode.FULLSCREEN;
        _assetSizes = [1, 1.5, 2, 4, 5];
    }


    override protected function handleAddedToStage(e:Event):void {
        super.handleAddedToStage(e);
//        setUpStarling(true);

        setUpStarling(true);
    }

    override public function handleStarlingReady():void {
        state = new StarlingDemoGameState();
    }

}

}
