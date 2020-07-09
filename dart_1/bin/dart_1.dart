/**
 * Bicycle의 속도 제어를 하는 예제
 */
class Bicycle1{
	int cadence;
	int speed;
	int gear;

	Bicycle1(this.cadence, this.speed, this.gear);

	void applyBrake(int decrement){
		speed -= decrement;
	}

	void speedUp(int increment){
		speed += increment;
	}

	@override
	String toString() => 'Bicycle: ${speed} mph';
}

class Bicycle2{
	int cadence;
	int _speed = 0;
	int gear;

	int get speed => _speed;

	Bicycle2(this.cadence, this.gear);

	void applyBrake(int decrement){
		_speed -= decrement;
	}

	void speedUp(int increment){
		_speed += increment;
	}

	@override
	String toString() => 'Bicycle: ${speed}, ${_speed} mph';
}

void main(){
	// var bike = Bicycle1(2, 10, 1);
	var bike = Bicycle2(2, 1);
	bike.speedUp(20);
	bike.applyBrake(5);
	print(bike);
}