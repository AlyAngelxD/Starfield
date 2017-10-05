Particle[] nParticles;
void setup()
{
	size(500,500);
	nParticles = new Particle[100];
	for (int i = 0; i < nParticles.length - 2; i++)
	{
		nParticles[i] = new NormalParticle();
	}
	nParticles[98] = new OddballParticle();
	nParticles[99] = new JumboParticle();
}
void draw()
{
	background(0);
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
		oX = 0;
		oY = 250;
		oAngle = 0;
		oSpeed = 5;
		oColor = 255;
	}
	public void move()
	{
		oX = oX + cos((float)oAngle)*oSpeed;
		oY = oY + sin((float)oAngle)*oSpeed;
	}
	public void show()
	{
		fill(oColor);
		ellipse((float)oX,(float)oY,10,10);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		ellipse((float)nX,(float)nY,15,15);
	}
}

