// koi fish pond
// water dropping into a pond

Particle[] aParticles;
Particle[] nParticles;
void setup()
{
	size(500,500);
	aParticles = new Particle[1];
	for (int i = 0; i < aParticles.length; i++)
	{
		aParticles[i] = new OddballParticle();
	}
	nParticles = new Particle[100];
	for (int i = 0; i < nParticles.length - 1; i++)
	{
		nParticles[i] = new NormalParticle();
	}
	nParticles[99] = new JumboParticle();
}
void draw()
{
	background(0);
	for (int i = 0; i < aParticles.length; i++)
	{
		aParticles[i].show();
		aParticles[i].move();
	}
	for (int i = 0; i < nParticles.length; i++)
	{
		nParticles[i].show();
		nParticles[i].move();
	}
}
class NormalParticle implements Particle 
{
	double nX, nY, nAngle, nSpeed;
	int nColor;
	NormalParticle() 
	{
		nX = 250;
		nY = 250;
		nAngle = Math.random()*360;
		nSpeed = Math.random()*10;
		nColor = 150;
	}
	public void move()
	{
		nX = nX + cos((float)nAngle)*nSpeed;
		nY = nY + sin((float)nAngle)*nSpeed;
	}
	public void show()
	{
		fill(nColor);
		ellipse((float)nX,(float)nY,5,5);
	}	
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double oX, oY, oAngle, oSpeed;
	int oColor;
	OddballParticle()
	{
		oX = 250;
		oY = 0;
		oAngle = 0;
		oSpeed = 3;
		oColor = 255;
	}
	public void move()
	{
		oY = oY + oSpeed;
	}
	public void show()
	{
		if (oY < 250)
		{
			fill(oColor);
			ellipse((float)oX,(float)oY,10,10);
		}
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		ellipse((float)nX,(float)nY,15,15);
	}
}