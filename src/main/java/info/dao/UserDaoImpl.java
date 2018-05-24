package info.dao;

import info.entity.User;
import info.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    public JdbcTemplate jdbcTemplate;


    public void save(User user) {
        String sql = "INSERT INTO user (id, name, email, role) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, user.getId(), user.getName(), user.getEmail(), user.getRole());

    }

    public User getById(int id) {
        String sql = "SELECT * FROM user WHERE id=?";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), id);
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    public void update(User user) {
        String sql = "UPDATE user SET name=?, email=?, role=? WHERE id=?";
        jdbcTemplate.update(sql, user.getName(), user.getEmail(), user.getRole(), user.getId());
    }

    public void delete(int id) {
        String sql = "DELETE FROM user WHERE id=?";
        jdbcTemplate.update(sql, id);

    }

}
