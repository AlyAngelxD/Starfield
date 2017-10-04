NormalParticle[] nParticles;
void setup()
{
	size(500,500);
	nParticles = new NormalParticle[100];
	for (int i = 0; i < nParticles.length; i++)
	{
		nParticles[i] = new NormalParticle();
	}
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
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

