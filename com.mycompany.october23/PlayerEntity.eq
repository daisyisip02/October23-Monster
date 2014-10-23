
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	int w;
	int h;
	SESprite Nargacuga;
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("myNargacuga", "Nargacuga", 0.1*w);
		Nargacuga=add_sprite_for_image(SEImage.for_resource("myNargacuga"));
		Nargacuga.move(0.5*w, 0.5*h);
	}
	public void tick(TimeVal now, double delta)
	{
		base.tick(now,delta);
		Nargacuga.move(MainScene.x,MainScene.y);
		
	}
	public void cleanup()
	 {
		base.cleanup();
	}
}
