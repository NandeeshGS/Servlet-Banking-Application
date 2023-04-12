package dto;

import java.sql.Date;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class BankTransaction {

	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Id
	int id;
	double deposit;
	double withdraw;
	double balance;
	LocalDateTime datetime;
	
	
}
