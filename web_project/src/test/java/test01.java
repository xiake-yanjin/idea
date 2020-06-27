import com.hnevc.dao.ScoreEntryDao;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class test01 {
    @Test
    public void test01() throws SQLException {
        ScoreEntryDao entryDao = new ScoreEntryDao();
        List<List<String>> score = entryDao.findScore();
        for (List<String> strings : score) {
            System.out.println(strings);
        }
    }
}
