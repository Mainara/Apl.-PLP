
public class Produtor implements Runnable {

	private int id;
	private int producaoTotal;
	private Buffer buffer;

	public Produtor(int id, Buffer buffer, int producaoTotal) {
		this.id = id;
		this.buffer = buffer;
		this.producaoTotal = producaoTotal;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProducaoTotal() {
		return producaoTotal;
	}

	public void setProducaoTotal(int producaoTotal) {
		this.producaoTotal = producaoTotal;
	}

	@Override
	public void run() {
		for (int i = 0; i < getProducaoTotal(); i++) {
			try {
				buffer.add(i);
				System.out.println("Produtor #" + getId() + ": colocou " + buffer.getContador());
			} catch (InterruptedException e) {
				System.out.println("Produtor #" + getId() + "esperando...");
			}
		}
		System.out.println("Produtor #" + getId() + " concluído!");
	}

}
