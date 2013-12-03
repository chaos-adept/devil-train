/**
 * Created with IntelliJ IDEA.
 * User: WORKSATION
 * Date: 03.12.13
 * Time: 20:48
 * To change this template use File | Settings | File Templates.
 */
package {
import citrus.view.starlingview.AnimationSequence;

import flash.display.Bitmap;

import starling.textures.Texture;

import starling.textures.TextureAtlas;

public class AssetStore {
    [Embed(source="../../../assets/devil/devil-animation.xml", mimeType="application/octet-stream")]
    private static const _heroConfig:Class;

    [Embed(source="../../../assets/devil/devil-animation.png")]
    private static const _heroPng:Class;


    public function AssetStore() {
    }

    public static function decoratePlayer(hero:*):void {

        var bitmap:Bitmap = new _heroPng();
        var texture:Texture = Texture.fromBitmap(bitmap);
        var xml:XML = XML(new _heroConfig());
        var sTextureAtlas:TextureAtlas = new TextureAtlas(texture, xml);


        var animSequence:AnimationSequence = new AnimationSequence(sTextureAtlas, ["Girl"], "Girl", 12);
        animSequence.mcSequences["Girl"].loop = true;
        hero.view = animSequence;

    }
}
}
