**1.**  文档根元素 "beans" 必须匹配 DOCTYPE 根 "null"。
    
        <import resource="classpath:spring/spring-config-datasource.xml"/>
    
        <!-- Mybatis文件   /**/*.xml 匹配任意多级目录下的xml文件 -->
        <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
            <property name="dataSource" ref="dataSource"/>
            <property name="configLocation" value="classpath:spring/spring-config-datasource.xml"/>
            <property name="mapperLocations" value="classpath:sqlmap/**/*.xml"/>
            <property name="typeAliasesPackage" value="com.jcs.ssm.domain"/>
        </bean>
问题根因：重复的引入了spring/spring-config-datasource.xml

**2.**  A web application registered the JDBC driver [com.mysql.jdbc.Driver] but failed to unregister

        <!-- mysql驱动版本号 -->
        <mysql-driver.version>8.0.11</mysql-driver.version>
        <mysql-driver.version>8.0.15</mysql-driver.version>
问题根因：引入的8.0.15驱动不兼容或者本来的bug导致的，换到8.0.11问题修复

**3.**  Could not open ServletContext resource [/WEB-INF/applicationContext.xml]


问题根因：spring查询不到自定义的配置文件。如果不特意指定参数名为contextConfigLoction的<context-parameter>元素，那么spring的ContextLoderListener监听器就会在/WEB-INF/下去寻找并加载该目录下的名为applicationContext.xml这个文件

解决方案：在```web.xml```文件中加上下面一段解决。
```
  <context-param>
    <param-name>contextConfigLocation</param-name>
    <param-value>classpath:spring-config.xml</param-value>
  </context-param>
```
