package pao;

import java.util.ArrayList;

import pto.Park;

public class ParkRepository {

	private ArrayList<Park> listOfPark = new ArrayList<Park>();
	private static ParkRepository parkInstance = new ParkRepository();
	
	public static ParkRepository getParkInstance() {
		return parkInstance;
	}
	
	public ParkRepository() {
		Park viking = new Park("R9876", "바이킹", 3);
		viking.setDescription("30미터 고공에서 75도 경사로 떨어지는 절대 쾌감!");
		viking.setCategory("Viking");
		viking.setEmployees(3);
		viking.setCondition("양호");
		
		Park tExpress = new Park("R9875", "티 익스프레스", 5);
		tExpress.setDescription("시속 104km의 엄청난 속도, 낙하각 77도의 아찔함!");
		tExpress.setCategory("T Express");
		tExpress.setEmployees(5);
		tExpress.setCondition("양호");
		
		Park ferrisW= new Park("R1236", "우주관람차", 0);
		ferrisW.setDescription("운행이 종료된 이후에는 조형물로써 에버랜드의 랜드마크 역할을 하고 있다");
		ferrisW.setCategory("Ferris Wheel");
		ferrisW.setEmployees(0);
		ferrisW.setCondition("폐장");
		
		listOfPark.add(viking);
		listOfPark.add(tExpress);
		listOfPark.add(ferrisW);
	}
	public ArrayList<Park> getAllParks(){
		return listOfPark;
	}
	
	public Park getParkById(String parkId) {
		Park parkById = null;
		
		for(int i =0; i<listOfPark.size(); i++) {
			Park park = listOfPark.get(i);
			if(park != null && park.getParkId() != null && park.getParkId().equals(parkId)) {
				parkById = park;
				break;
			}
		}
		return parkById;
	}
}

