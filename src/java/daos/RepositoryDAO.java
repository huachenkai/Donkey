package daos;

import models.User;
import org.springframework.stereotype.Repository;

@Repository
public class RepositoryDAO {

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
