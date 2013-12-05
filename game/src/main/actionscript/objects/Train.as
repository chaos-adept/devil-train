/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 04.12.13
 * Time: 21:29
 * To change this template use File | Settings | File Templates.
 */
package objects {
import citrus.objects.CitrusSprite;

public class Train extends CitrusSprite {

    public function Train(name:String, params:Object = null) {
        super(name, params);
        updateCallEnabled = true;
    }
}
}
