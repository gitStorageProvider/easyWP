package beans;

import java.io.Serializable;

public class BaseEntity implements Cloneable, Serializable{
    private int id;

    public BaseEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
