
public class ObjectValue {
	public static void main(String[] args) {
		Bean bean =new Bean();
		bean.setName("21");
		changeBean(bean);
		System.out.println(bean.getName());
	}
	public static void changeBean(Bean bean){
		bean.setName("321");
		Bean bean2=new Bean();
		bean2.setName("nihao");
		bean=bean2;
		System.out.println(bean.getName()+"***");
		
	}
}
