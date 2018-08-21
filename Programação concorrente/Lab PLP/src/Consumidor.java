
public class Consumidor implements Runnable {

	private int id;
	private int totalConsumir;
	private Buffer buffer;
	
	public Consumidor(int id, Buffer buffer, int totalConsumir) {
		this.id = id;
		this.buffer = buffer;
		this.totalConsumir = totalConsumir;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTotalConsumir() {
		return totalConsumir;
	}

	public void setTotalConsumir(int totalConsumir) {
		this.totalConsumir = totalConsumir;
	}

	@Override
	public void run() {
		for (int i = 0; i < getTotalConsumir(); i++) {
			try {
				buffer.consumir();
				System.out.println("Consumidor #" + getId() + ": consumiu " + buffer.getContador());
			} catch (InterruptedException e) {
				System.out.println("Consumidor #" + getId() + "esperando...");
			}
		}
		System.out.println("Consumidor #" + getId() + " concluído!");
		
	}

}
