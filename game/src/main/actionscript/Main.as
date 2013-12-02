package {
    import citrus.core.starling.StarlingCitrusEngine;

import flash.events.Event;


public class Main extends StarlingCitrusEngine {



    override protected function handleAddedToStage(e:Event):void {
        super.handleAddedToStage(e);
        setUpStarling(true);

    }

    override public function handleStarlingReady():void {
        state = new StarlingDemoGameState();
    }

}

}
