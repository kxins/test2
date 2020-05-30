package Login;

import java.io.Serializable;

public class UserInfo implements Serializable {

    private Integer nUserId;

    private String vcLoginName;

    private String vcPassword;


    public Integer getNUserId() {
        return nUserId;
    }

    public void setNUserId(Integer nUserId) {
        this.nUserId = nUserId;
    }

    public String getVcLoginName() {
        return vcLoginName;
    }

    public void setVcLoginName(String vcLoginName) {
        this.vcLoginName = vcLoginName;
    }

    public String getVcPassword() {
        return vcPassword;
    }

    public void setVcPassword(String vcPassword) {
        this.vcPassword = vcPassword;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "nUserId=" + nUserId +
                ", vcLoginName='" + vcLoginName + '\'' +
                ", vcPassword='" + vcPassword + '\'' +
                '}';
    }
}
