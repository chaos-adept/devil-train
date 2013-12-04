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

import objects.GroundBackground;

import starling.display.Image;
import starling.display.Sprite;

import starling.textures.Texture;

import starling.textures.TextureAtlas;

public class AssetStore {
    [Embed(source="../../../assets/devil/devil-animation.xml", mimeType="application/octet-stream")]
    private static const _heroConfig:Class;

    [Embed(source="../../../assets/devil/devil-animation.png")]
    private static const _heroPng:Class;

    [Embed(source="../../../assets/ground/ground_processed.png")]
    public static const groundBackground:Class;

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

    public static function decorateGround(ground:GroundBackground):void {
        var imgContainer:Sprite = new Sprite();

        var imgSrc:Bitmap = new groundBackground;

        var texture:Texture = Texture.fromBitmap(imgSrc);
        var img1:Image = new Image(texture);
        img1.y = -img1.height
        imgContainer.addChild(img1);

        var img2:Image = new Image(texture);

        imgContainer.addChild(img2);
        imgContainer.y = 0;
        ground.view = imgContainer;
    }
}
}
