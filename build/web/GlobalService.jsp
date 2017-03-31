<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>
<%@page import="java.sql.ResultSetMetaData" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>

<%!
public class EntityFactory {

    public EntityFactory(Connection connection, String queryString) {
        this.queryString = queryString;
        this.connection = connection;
    }

    public Map<String, Object> findSingle(Object[] params) throws SQLException {
        List<Map<String, Object>> objects = this.findMultiple(params);

        if (objects.size() != 1) {
            throw new SQLException("Query did not produce one object it produced: " + objects.size() + " objects.");
        }

        Map<String, Object> object = objects.get(0);  //extract only the first item;

        return object;
    }

    public List<Map<String, Object>> findMultiple(Object[] params) throws SQLException {
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = this.connection.prepareStatement(this.queryString);
            for (int i = 0; i < params.length; ++i) {
                ps.setObject(1, params[i]);
            }

            rs = ps.executeQuery();
            return getEntitiesFromResultSet(rs);
        } catch (SQLException e) {
            throw (e);
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
        }
    }

    protected List<Map<String, Object>> getEntitiesFromResultSet(ResultSet resultSet) throws SQLException {
        ArrayList<Map<String, Object>> entities = new ArrayList<>();
        while (resultSet.next()) {
            entities.add(getEntityFromResultSet(resultSet));
        }
        return entities;
    }

    protected Map<String, Object> getEntityFromResultSet(ResultSet resultSet) throws SQLException {
        ResultSetMetaData metaData = resultSet.getMetaData();
        int columnCount = metaData.getColumnCount();
        Map<String, Object> resultsMap = new HashMap<>();
        for (int i = 1; i <= columnCount; ++i) {
            String columnName = metaData.getColumnName(i).toLowerCase();
            Object object = resultSet.getObject(i);
            resultsMap.put(columnName, object);
        }
        return resultsMap;
    }
    private final String queryString;
    protected Connection connection;
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
