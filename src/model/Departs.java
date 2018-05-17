package model;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Departs")
public class Departs {
	@Id
	private String id;
	private String Name;
	@OneToMany(mappedBy = "Depart", fetch = FetchType.EAGER)
	private Collection<Staffs> staff;

	public Departs() {
		super();
	}

	public Collection<Staffs> getStaffs() {
		return staff;
	}

	public void setStaffs(Collection<Staffs> staff) {
		this.staff = staff;
	}

	public Departs(String id, String name) {
		super();
		this.id = id;
		Name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

}
