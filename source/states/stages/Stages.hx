package states.stages;

import states.stages.objects.*;
import flixel.addons.effects.FlxSkewedSprite;

class Stages extends BaseStage
{
	private var curSong:String = "";
	var stageCheck:String = 'stage';

	public static var curStage:String = '';

	override function create()
	{
		switch (stageCheck)
		{
			case 'lilyStage':
				curStage = 'lilyStage';

				defaultCamZoom = 0.80;

				var bg:FlxSprite = new FlxSprite(-600, -300);
				bg.frames = Paths.getSparrowAtlas("lily/stuff");
				bg.animation.addByPrefix("idle", "stage", 24, false);
				bg.scrollFactor.set(0.7, 0.7);
				bg.antialiasing = true;
				bg.active = false;
				bg.animation.play("idle", true);
				add(bg);

				var roadinner = new FlxSprite();
				roadinner.frames = Paths.getSparrowAtlas("lily/stuff");
				roadinner.animation.addByPrefix("idle", "roadinner", 24, false);
				roadinner.scrollFactor.set(0.8, 0.8);
				roadinner.antialiasing = true;
				roadinner.animation.play("idle", true);
				roadinner.scale.x = 10;
				roadinner.updateHitbox();
				roadinner.setPosition(-600, 274);
				roadinner.active = false;
				add(roadinner);

				var light = new FlxSprite(80, 0);
				light.frames = Paths.getSparrowAtlas("lily/morestuff");
				light.animation.addByPrefix("idle", "light", 24, false);
				light.antialiasing = true;
				light.scrollFactor.set(0.9, 0.9);
				add(light);
				light.animation.play("idle", true);

				var light2 = light.clone();
				light2.x += 1053;
				add(light2);
				light2.animation.play("idle", true);

				var lilySoil = new FlxSprite(-200, 400);
				lilySoil.frames = Paths.getSparrowAtlas("lily/morestuff");
				lilySoil.animation.addByPrefix("idle", "soil", 24, false);
				lilySoil.antialiasing = true;
				lilySoil.scrollFactor.set(0.9, 0.9);
				add(lilySoil);
				lilySoil.animation.play("idle", true);

				var roadfront = new FlxSprite(-600, 581);
				roadfront.frames = Paths.getSparrowAtlas("lily/stuff");
				roadfront.animation.addByPrefix("idle", "roadfront", 24, false);
				roadfront.scrollFactor.set(0.9, 0.9);
				roadfront.antialiasing = true;
				roadfront.active = false;
				roadfront.animation.play("idle", true);
				add(roadfront);

				var glasses = new FlxTypedGroup<FlxSprite>();

				var glass = new FlxSprite(0, 0);
				glass.frames = Paths.getSparrowAtlas("lily/morestuff");
				glass.antialiasing = true;
				glass.animation.addByPrefix("1", "glassOne", 24, false);
				glass.animation.addByPrefix("2", "glassTwo", 24, false);
				glass.animation.addByPrefix("3", "glassThree", 24, false);
				glass.animation.addByPrefix("4", "glassFour", 24, false);
				glass.animation.addByPrefix("5", "glassFive", 24, false);
				glass.scrollFactor.set(1, 1);
				glass.animation.play("1");
				glass.setPosition(-670, 850);
				glass.active = false;
				glasses.add(glass);
				for (i in [[2, 608], [3, 1239], [4, 1948], [5, 2521]])
				{
					var moreGlass = glass.clone();
					moreGlass.animation.play(Std.string(i[0]));
					moreGlass.setPosition(-670 + i[1], 850);
					moreGlass.active = false;
					glasses.add(moreGlass);
				}
				// var theTweens:Map<FlxSprite, FlxTween> = [];
				// bopSprites.push(function()
				// {
				// 	glasses.forEachAlive(function(sprite)
				// 	{
				// 		sprite.offset.y = 0;
				// 		if (theTweens[sprite] != null)
				// 		{
				// 			theTweens[sprite].start();
				// 		}
				// 		else
				// 		{
				// 			theTweens[sprite] = FlxTween.tween(sprite, {"offset.y": -25}, Conductor.crochet / 1000 / 2, {type: PINGPONG});
				// 		}
				// 	});
				// });
				// onDestroy.push(function()
				// {
				// 	for (twn in theTweens)
				// 	{
				// 		if (twn != null && twn.active)
				// 		{
				// 			twn.cancel();
				// 			twn.camFollow);
				// 		}
				// 		twn = null;
				// 	}
				// 	theTweens.clear();
				// });

				add(glasses);
			case 'bfStage':
				curStage = 'bfStage';

				defaultCamZoom = 0.75;

				var bg:FlxSprite = new FlxSprite(-500, -200).loadGraphic(Paths.image('bfStage/bg2'));
				bg.antialiasing = true;
				bg.active = false;
				bg.scrollFactor.set(0.3, 0.3);
				add(bg);

				var fore:FlxSprite = new FlxSprite(-500, -200).loadGraphic(Paths.image('bfStage/fg'));
				fore.antialiasing = true;
				fore.active = false;
				add(fore);
			case 'atlantaStage':
				curStage = 'atlantaStage';

				defaultCamZoom = 0.7;

				var bg:FlxSprite = new FlxSprite(-625, -200).loadGraphic(Paths.image('ghoti/bg'));
				bg.antialiasing = true;
				bg.active = false;
				add(bg);
			case 'prismaStage':
				defaultCamZoom = 0.8;
				curStage = 'prismaStage';
				var bg = new FlxSprite().loadGraphic(Paths.image("prismaStage/space"));
				bg.antialiasing = true;
				bg.scrollFactor.set();
				bg.screenCenter(XY);
				add(bg);

				var sun = new FlxSprite().loadGraphic(Paths.image("prismaStage/sun"));
				sun.setPosition(FlxG.width / 2 - sun.width / 2, -125);
				sun.antialiasing = true;
				sun.scrollFactor.set(0.2, 0.2);
				add(sun);

				var mtn = new FlxSprite().loadGraphic(Paths.image("prismaStage/mountain"));
				mtn.setPosition(FlxG.width / 2 - mtn.width / 2, 100);
				mtn.antialiasing = true;
				mtn.scrollFactor.set(0.33, 0.33);
				add(mtn);

				var skewGrid = new FlxSkewedSprite();
            	var skewScale:Float = -0.1;
				skewScale = -0.1;
				skewGrid.loadGraphic(Paths.image("prismaStage/tile"));
				skewGrid.antialiasing = true;
				skewGrid.setPosition(FlxG.width / 2 - skewGrid.width / 2, 600);
				add(skewGrid);
			case 'prismaStage2':
				defaultCamZoom = 0.8;
				curStage = 'prismaStage';
				var bg = new FlxSprite().loadGraphic(Paths.image("prismaStage/space"));
				bg.antialiasing = true;
				bg.scrollFactor.set();
				bg.screenCenter(XY);
				add(bg);

				var sun = new FlxSprite().loadGraphic(Paths.image("prismaStage/moon"));
				sun.setPosition(FlxG.width / 2 - sun.width / 2, -175);
				sun.antialiasing = true;
				sun.scrollFactor.set(0.2, 0.2);
				add(sun);

				var mtn:FlxSprite = new FlxSprite().loadGraphic(Paths.image("prismaStage/city"));
				mtn.setPosition(FlxG.width / 2 - mtn.width / 2, -100);
				mtn.antialiasing = true;
				mtn.scrollFactor.set(0.33, 0.33);
				add(mtn);

	            var skewScale:Float = -0.1;
				skewScale = -0.07;
				var skewGrid = new FlxSkewedSprite();
				skewGrid.loadGraphic(Paths.image("prismaStage/tile2"));
				skewGrid.antialiasing = true;
				skewGrid.setPosition(FlxG.width / 2 - skewGrid.width / 2, 600);
				add(skewGrid);
			default:
				defaultCamZoom = 0.9;
				curStage = 'stage';
				var bg:FlxSprite = new FlxSprite(-600, -200).loadGraphic(Paths.image("stage/stageback2"));
				bg.antialiasing = true;
				bg.scrollFactor.set(0.9, 0.9);
				bg.active = false;
				bg.antialiasing = true;
				add(bg);

				// var stageFront:FlxSprite = new FlxSprite(-650, 600).loadGraphic(Paths.getImagePNG("stage/stagefront"));
				// stageFront.setGraphicSize(Std.int(stageFront.width * 1.1));
				// stageFront.updateHitbox();
				// stageFront.antialiasing = true;
				// stageFront.scrollFactor.set(0.9, 0.9);
				// stageFront.active = false;
				// stageFront.antialiasing = true;
				// add(stageFront);

				var stageCurtains:FlxSprite = new FlxSprite(-500, -300).loadGraphic(Paths.image("stage/stagecurtains"));
				stageCurtains.setGraphicSize(Std.int(stageCurtains.width * 0.9));
				stageCurtains.updateHitbox();
				stageCurtains.antialiasing = true;
				stageCurtains.scrollFactor.set(1.3, 1.3);
				stageCurtains.active = false;
				stageCurtains.antialiasing = true;
				add(stageCurtains);
		}
		if (curSong.toLowerCase() == 'Kickin') {
			curStage = 'bfStage';
        }
		if (curSong.toLowerCase() == 'Zombie-Flower') {
			curStage = 'lilyStage';
        }
		if (curSong.toLowerCase() == 'Tune-A-Fish') {
			curStage = 'atlantaStage';
        }
		if (curSong.toLowerCase() == 'Fresnel') {
			curStage = 'prismaStage';
        }
		if (curSong.toLowerCase() == 'SiO2') {
			curStage = 'prismaStage2';
        }
	}
}
