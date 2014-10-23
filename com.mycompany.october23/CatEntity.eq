
/*
 * CatEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class CatEntity : SEEntity
{
	int w;
	int h;
	SESprite tigrex;
	int mx;
	int my;
	int pX;
	int py;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
	
		
		rsc.prepare_image("mycat2", "tigrex", 0.1*w);
		tigrex=add_sprite_for_image(SEImage.for_resource("mycat2"));
	
		tigrex.move(Math.random(0,w), Math.random(0,h));
	}
	public void tick(TimeVal now, double delta)
	{
		mx=tigrex.get_x();
		my= tigrex.get_y();
		pX= MainScene.x;
		py= MainScene.y;
		base.tick(now,delta);
		tigrex.move(mx+(pX-mx)/Math.random(100,1000),my+ (py-my)/Math.random(100,1000));
	}
	public void cleanup()
	 {
		base.cleanup();
	}
}
