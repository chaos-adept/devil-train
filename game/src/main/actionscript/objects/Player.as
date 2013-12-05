/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 03.12.13
 * Time: 19:56
 * To change this template use File | Settings | File Templates.
 */
package objects {
import citrus.objects.CitrusSprite;

public class Player extends CitrusSprite {

    /**
     * Defines which input Channel to listen to.
     */
    [Inspectable(defaultValue = "0")]
    public var inputChannel:uint = 0;

    public var acceleration:Number = 10;

    public function Player(name:String, params:Object = null) {
        super(name, params);
        updateCallEnabled = true;
    }



    override public function update(timeDelta:Number):void {

        super.update(timeDelta);

        if (_ce.input.isDoing("left",inputChannel)) {
            _velocity.x -= acceleration;
        }

        if (_ce.input.isDoing("right", inputChannel)) {
            _velocity.x += acceleration;
        }

        if (_ce.input.isDoing("up",inputChannel)) {
            _velocity.y -= acceleration;
        }

        if (_ce.input.isDoing("down", inputChannel)) {
            _velocity.y += acceleration;
        }
    }

}
}
