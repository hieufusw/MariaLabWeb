
package model;

public class FindUsModel {

    private int id;
    private String address;
    private String tel;
    private String email;
    private String dayClose, weekDays, holiday;
    private String photoPath;

    public FindUsModel() {
    }

    public FindUsModel(int id, String address, String tel, String email, String dayClose, String weekDays, String holiday, String photoPath) {
        this.id = id;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.dayClose = dayClose;
        this.weekDays = weekDays;
        this.holiday = holiday;
        this.photoPath = photoPath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDayClose() {
        return dayClose;
    }

    public void setDayClose(String dayClose) {
        this.dayClose = dayClose;
    }

    public String getWeekDays() {
        return weekDays;
    }

    public void setWeekDays(String weekDays) {
        this.weekDays = weekDays;
    }

    public String getHoliday() {
        return holiday;
    }

    public void setHoliday(String holiday) {
        this.holiday = holiday;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

}
