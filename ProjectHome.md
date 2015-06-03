# Maven #
## Hibernate-Sqlite maven use ##
1.add repository in the pom.xml file(between the repositories tag)
```
<repository>
  <id>hibernatesqlite-maven</id>
  <url>https://hibernate-sqlite.googlecode.com/svn/trunk/mavenrepo</url>
</repository>
```
2.add dependency in the pom.xml file(between the dependencies tag)<br>
<pre><code>&lt;!-- hibernate sqlite dialect --&gt;<br>
&lt;dependency&gt;<br>
  &lt;groupId&gt;com.applerao&lt;/groupId&gt;<br>
  &lt;artifactId&gt;hibernatesqlite&lt;/artifactId&gt;<br>
  &lt;version&gt;1.0&lt;/version&gt;<br>
&lt;/dependency&gt;<br>
</code></pre>
3.modify the hibernate dialect configuration like:<br>
<pre><code>&lt;property name="dialect"&gt;com.applerao.hibernatesqlite.dialect.SQLiteDialect&lt;/property&gt;<br>
</code></pre>
4.maven your project and the hibernate-sqlite is ready to use. <br><br>
Additionally, the version of hibernate used in hibernatesqlite-1.0 is 3.2.6.ga, and if you want to use another version of hibernate, you can exclude the hibernate like this:<br>
<pre><code>&lt;!-- hibernate sqlite dialect --&gt;<br>
&lt;dependency&gt;<br>
	&lt;groupId&gt;com.applerao&lt;/groupId&gt;<br>
	&lt;artifactId&gt;hibernatesqlite&lt;/artifactId&gt;<br>
	&lt;version&gt;1.0&lt;/version&gt;<br>
	&lt;exclusions&gt;<br>
		&lt;exclusion&gt;<br>
			&lt;groupId&gt;org.hibernate&lt;/groupId&gt;<br>
			&lt;artifactId&gt;hibernate&lt;/artifactId&gt;<br>
		&lt;/exclusion&gt;<br>
	&lt;/exclusions&gt;<br>
&lt;/dependency&gt;<br>
</code></pre>
and add hibernate dependency like this:<br>
<pre><code>&lt;!-- hibernate jars --&gt;<br>
&lt;dependency&gt;<br>
  &lt;groupId&gt;org.hibernate&lt;/groupId&gt;<br>
  &lt;artifactId&gt;hibernate&lt;/artifactId&gt;<br>
  &lt;version&gt;3.2.7.ga&lt;/version&gt;<br>
&lt;/dependency&gt;<br>
</code></pre>
Besides, you can just add a hibernate dependency to override without exclude it in the hibernatesqlite dependency.<br>
ps:this part thanks to the suggestion from @Jason Wheeler<br>
<h1>Download</h1>
<h2>Local Project</h2>
1.<a href='http://hibernate-sqlite.googlecode.com/files/HibernateSQLite.rar'>http://hibernate-sqlite.googlecode.com/files/HibernateSQLite.rar</a><br>
No referenced jars included, built it with maven2 and then import into eclipse.(12.7K)<br>
2.<a href='http://hibernate-sqlite.googlecode.com/files/HibernateSQLite_with_jar.rar'>http://hibernate-sqlite.googlecode.com/files/HibernateSQLite_with_jar.rar</a><br>
Referenced jars included,import it into eclipse directly!(5.8M)<br>
<h2>Web Project</h2>
1.<a href='http://hibernate-sqlite.googlecode.com/files/HSWeb.rar'>http://hibernate-sqlite.googlecode.com/files/HSWeb.rar</a><br>
No referenced jars included, built it with maven2 and then import into eclipse.(22.6K)<br>
2.<a href='http://hibernate-sqlite.googlecode.com/files/HSWeb_with_jar.zip'>http://hibernate-sqlite.googlecode.com/files/HSWeb_with_jar.zip</a><br>
Referenced jars included,import it into eclipse directly!(11.5M)<br>
3.<a href='http://hibernate-sqlite.googlecode.com/files/HSWeb.war'>http://hibernate-sqlite.googlecode.com/files/HSWeb.war</a><br>
A war package of the sample web project.(11.4M)<br>
4.<a href='http://hibernate-sqlite.googlecode.com/files/1.db'>http://hibernate-sqlite.googlecode.com/files/1.db</a><br>
the Sqlite db file for the web project.(2.0k)<br>
<h3>Before run the web project,read the readme.txt to configure the database connection</h3>
<a href='http://hibernate-sqlite.googlecode.com/files/readme.txt'>http://hibernate-sqlite.googlecode.com/files/readme.txt</a>
<h1>SQLite with Hibernate</h1>
Since SQLite database is widely used and it is not well supported by Hibernate(not NHibernate) in java,it's not easy to use SQLite with Hibernate.This project is to help you quickly start with SQLite-Hibernate programming.<br>
<br>
<hr />

<h1>Guide to quickly start with the demo project</h1>
<h2>1.Download the HibernateSQLite Project</h2>
HibernateSQLite Project,download it here:<br>
<a href='http://hibernate-sqlite.googlecode.com/files/HibernateSQLite.rar'>http://hibernate-sqlite.googlecode.com/files/HibernateSQLite.rar</a>,then go to the second step.<br>
If you don't want to build it,download it here:<br>
<a href='http://hibernate-sqlite.googlecode.com/files/HibernateSQLite_with_jar.rar'>http://hibernate-sqlite.googlecode.com/files/HibernateSQLite_with_jar.rar</a>, go to the third step directly.<br>
<h2>2.Build the project with Maven2</h2>
After you have Unziped it, use maven2 to build the project. If you haven't installed Maven2, go to <a href='http://maven.apache.org/download.html'>http://maven.apache.org/download.html</a> to download one and install it.Then,Enter the project folder in command window, such as:<br>
<pre><code>C:\Documents and Settings\Administrator&gt;f:<br>
<br>
F:\&gt;cd work<br>
<br>
F:\work&gt;cd workspace<br>
<br>
F:\work\workspace&gt;cd HibernateSQLite<br>
<br>
F:\work\workspace\HibernateSQLite&gt;<br>
</code></pre>
execute the maven2 command "mvn eclipse:clean", like this:<br>
<pre><code>F:\work\workspace\HibernateSQLite&gt;mvn eclipse:clean<br>
</code></pre>
after you have cleaned the project, execute the command "mvn eclipse:eclipse", like this:<br>
<pre><code>F:\work\workspace\HibernateSQLite&gt;mvn eclipse:eclipse<br>
</code></pre>
if the command window displays like this:<br>
<pre><code>[INFO] ------------------------------------------<br>
[INFO] BUILD SUCCESSFUL<br>
[INFO] ------------------------------------------<br>
[INFO] Total time: 6 seconds<br>
[INFO] Finished at: Fri Jan 02 20:49:32 CST 2009<br>
[INFO] Final Memory: 6M/11M<br>
[INFO] ------------------------------------------<br>
</code></pre>
then the project is build sucessfully.<br>
<h2>3.Import the project into Eclipse</h2>
In Eclipse, choose "Import --> Existing Projects into Workspace", browse the demo project folder and click "OK", then choose "HibernateSQLite", and the demo project is successfully imported into eclipse workspace.<br>
<h2>4.Test the demo project is working well</h2>
Run the Junit TestCase "TestSaveUser.java" under package "test" to test if the project works well.The propose result is:<br>
<pre><code>Hibernate: <br>
    insert <br>
    into<br>
        users<br>
        (name, password) <br>
    values<br>
        (?, ?)<br>
Hibernate: <br>
    select<br>
        last_insert_rowid()<br>
</code></pre>
if so,the demo is already working well.With this demo, you can easyly produce code using SQLite DataBase with Hibernate.<br>
<hr />
<h1>Introduction of Demo Project</h1>
<h2>1.Catalog</h2>
<pre><code>HibernateSQLite<br>
|-- pom.xml<br>
`-- src<br>
    |-- main<br>
    |   |-- java<br>
    |   |   |-- dialect<br>
    |   |   |   `-- SQLiteDialect.java<br>
    |   |   |-- model<br>
    |   |   |   `-- User.java<br>
    |   |   `-- util<br>
    |   |       `-- HibernateUtil.java<br>
    |   |<br>
    |   |<br>
    |   `-- resources<br>
    |       |-- hibernate.cfg.xml<br>
    |       |-- log4j.properties<br>
    |       `-- User.hbm.xml<br>
    |<br>
    `-- test<br>
        `-- java<br>
            `-- test<br>
                `-- TestSaveUser.java<br>
</code></pre>
<h2>2.Referenced Jars</h2>
pom.xml<br>
<pre><code>	&lt;dependencies&gt;<br>
		&lt;!-- Junit Test --&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;junit&lt;/groupId&gt;<br>
			&lt;artifactId&gt;junit&lt;/artifactId&gt;<br>
			&lt;version&gt;4.5&lt;/version&gt;<br>
			&lt;scope&gt;test&lt;/scope&gt;<br>
		&lt;/dependency&gt;<br>
		<br>
		&lt;!-- Hibernate --&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;org.hibernate&lt;/groupId&gt;<br>
			&lt;artifactId&gt;hibernate&lt;/artifactId&gt;<br>
			&lt;version&gt;3.2.6.ga&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;antlr&lt;/groupId&gt;<br>
			&lt;artifactId&gt;antlr&lt;/artifactId&gt;<br>
			&lt;version&gt;2.7.6&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;asm&lt;/groupId&gt;<br>
			&lt;artifactId&gt;asm&lt;/artifactId&gt;<br>
			&lt;version&gt;1.5.3&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;c3p0&lt;/groupId&gt;<br>
			&lt;artifactId&gt;c3p0&lt;/artifactId&gt;<br>
			&lt;version&gt;0.9.1&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;cglib&lt;/groupId&gt;<br>
			&lt;artifactId&gt;cglib&lt;/artifactId&gt;<br>
			&lt;version&gt;2.1_3&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;commons-logging&lt;/groupId&gt;<br>
			&lt;artifactId&gt;commons-logging&lt;/artifactId&gt;<br>
			&lt;version&gt;1.1.1&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;commons-collections&lt;/groupId&gt;<br>
			&lt;artifactId&gt;commons-collections&lt;/artifactId&gt;<br>
			&lt;version&gt;3.2&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;dom4j&lt;/groupId&gt;<br>
			&lt;artifactId&gt;dom4j&lt;/artifactId&gt;<br>
			&lt;version&gt;1.6.1&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;log4j&lt;/groupId&gt;<br>
			&lt;artifactId&gt;log4j&lt;/artifactId&gt;<br>
			&lt;version&gt;1.2.9&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;ehcache&lt;/groupId&gt;<br>
			&lt;artifactId&gt;ehcache&lt;/artifactId&gt;<br>
			&lt;version&gt;1.2.3&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		&lt;dependency&gt;<br>
		&lt;groupId&gt;javax.transaction&lt;/groupId&gt;<br>
		&lt;artifactId&gt;jta&lt;/artifactId&gt;<br>
		&lt;version&gt;1.1&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
		<br>
		&lt;!-- SQLite database JDBC --&gt;<br>
		&lt;dependency&gt;<br>
			&lt;groupId&gt;org.xerial&lt;/groupId&gt;<br>
			&lt;artifactId&gt;sqlite-jdbc&lt;/artifactId&gt;<br>
			&lt;version&gt;3.6.0&lt;/version&gt;<br>
		&lt;/dependency&gt;<br>
	&lt;/dependencies&gt;<br>
</code></pre>
<h2>3.Usage</h2>
<table><thead><th> <b>Java File</b> </th><th> <b>Usage</b> </th></thead><tbody>
<tr><td>SQLiteDialect.java</td><td>the dialect for SQLite DataBase</td></tr>
<tr><td>User.java         </td><td>a model class for test</td></tr>
<tr><td>HibernateUtil.java</td><td>a tool class for Hibernate use</td></tr>
<tr><td> <b>Resource File</b> </td><td> <b>Usage</b> </td></tr>
<tr><td>hibernate.cfg.xml </td><td>the configuation file for hibernate</td></tr>
<tr><td>log4j.properties  </td><td>the log configuation file for the project</td></tr>
<tr><td>User.hbm.xml      </td><td>the hibernate mapping file for User class</td></tr>
<tr><td> <b>Test File</b> </td><td> <b>Usage</b> </td></tr>
<tr><td>TestSaveUser.java </td><td>a testcase save an object into the SQLite DataBase with Hibernate</td></tr>