
public class Buffer {
	private int contador;
	private boolean status;
	
	public Buffer() {
		this.status = true;
	}
	
	public synchronized void add(int i) throws InterruptedException {
		while (status) {
			
			wait();	

		}
		
		contador = i;
		this.status = true;
		notifyAll();
	}
	
	

	public synchronized void consumir() throws InterruptedException {
		while(!status) {
			wait();
		}
		this.status = false;
		notifyAll();
	}
	
	
	public int getContador() {
		return contador;
	}

	public void setContador(int contador) {
		this.contador = contador;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
