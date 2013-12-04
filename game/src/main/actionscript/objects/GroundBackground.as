/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 04.12.13
 * Time: 21:02
 * To change this template use File | Settings | File Templates.
 */
package objects {
import citrus.objects.CitrusSprite;
import citrus.view.ICitrusArt;

public class GroundBackground extends CitrusSprite {
    public function GroundBackground(name:String, params:Object = null) {
        super(name, params);
        updateCallEnabled = true;
    }


    override public function update(timeDelta:Number):void {
        super.update(timeDelta);
        //view.x = this.stage.stageWidth / 2 - this.view.width/2;
        this.y -= Math.floor( timeDelta * 600 );

        if (this.y <= 0) {
            this.y = view.height/2;
        }
    }

}
}
