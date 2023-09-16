package vn.edu.iuh.fit.models;

public class GrantAccount {
    private String id;
    private String account;
    private boolean grant;
    private String note;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public boolean isGrant() {
        return grant;
    }

    public void setGrant(boolean grant) {
        this.grant = grant;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public GrantAccount(String id, String account, Boolean grant, String note) {
        this.id = id;
        this.account = account;
        this.grant = grant;
        this.note = note;
    }

    @Override
    public String toString() {
        return "GrantAccount{" +
                "id='" + id + '\'' +
                ", account=" + account +
                ", grant=" + grant +
                ", note='" + note + '\'' +
                '}';
    }
}
