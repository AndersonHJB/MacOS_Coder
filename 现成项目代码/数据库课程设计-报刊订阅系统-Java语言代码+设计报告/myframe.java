//������
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
//import java.io.BufferedReader;

import javax.swing.*;

import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;


public class myframe extends JFrame  implements ActionListener
{		//Statement stmt;
        MenuBar  mb;
        Menu m1,m2,m3,m4,m5;
        Label  lb1=new Label("�������Ĺ���ϵͳ",Label.CENTER);
        Label lb4=new Label("�����06-2��  �ܽ���",Label.CENTER);
        Label lb3=new Label("���ݿ�γ����",Label.CENTER);
        MenuItem mi1,mi3,mi4,mi7,mi8,mi10,mi11;
        myframe()
        {
        		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                setTitle("�������Ĺ���ϵͳ");
                mb=new MenuBar();
                m1=new Menu("Ŀ¼����");
                m2=new Menu("��������");
                m3=new Menu("��������");
                m4=new Menu("�ʺŹ���");
                m5=new Menu("ϵͳ");
                mb.add(m1);
                mb.add(m3);
                mb.add(m2);
                mb.add(m4);
                mb.add(m5);
                mi1=new MenuItem("Ŀ¼����");
                mi3=new MenuItem("����ϵͳ");
                mi4=new MenuItem("��������");
                mi11=new MenuItem("����ͳ��");
                mi7=new MenuItem("���ӹ���Ա");
                mi8=new MenuItem("ɾ������Ա");
                mi10=new MenuItem("��������");


                m1.add(mi1);
                m3.add(mi10);
                m2.add(mi4);
                m2.add(mi11);
                m4.add(mi7);
                m4.add(mi8);
                m5.add(mi3);
                final Container con=this.getContentPane();
                con.add(lb1);
                con.add(lb3);con.add(lb4);

                con.setLayout(new GridLayout(4,1,1,1));

                lb1.setFont(new Font("����",Font.BOLD,40));
                lb1.setForeground(Color.blue);
                lb1.setBounds(new Rectangle(16, 13, 93, 28));
                lb3.setFont(new Font("����",Font.BOLD,25));
                lb3.setForeground(Color.black);
                lb4.setFont(new Font("����",Font.BOLD,20));
                lb4.setForeground(Color.black);

                mi1.addActionListener(this);
               //mi2.addActionListener(this);
                mi3.addActionListener(this);
                mi4.addActionListener(this);
                //mi5.addActionListener(this);
               // mi6.addActionListener(this);
                mi7.addActionListener(this);
                mi8.addActionListener(this);
                //mi9.addActionListener(this);
                mi10.addActionListener(this);
                mi11.addActionListener(this);
                //mi12.addActionListener(this);
               // mi13.addActionListener(this);

                this.setMenuBar(mb);
                setBounds(300,300,460,300);
                setVisible(true);
                setResizable(false);
                setSize(700,500);
                setLocationRelativeTo(null);
        }


        ////����¼�/////////////////////////////////////////////////////////////////////////////////////////////
        public  void actionPerformed(final ActionEvent e)
        {
                	if(e.getSource()==mi1)   //Ŀ¼��ѯ
                	{
                	     new SimpleTable();
                	}

	                else if(e.getSource()==mi3)  //����ϵͳ
	                {
                 	JOptionPane.showMessageDialog(null, "ϵͳ���ƣ��������Ĺ���ϵͳ","����ϵͳ",JOptionPane.INFORMATION_MESSAGE);

	                }
                	else if(e.getSource()==mi4)  //������ѯ
                	{		new DDxinxi();

                	}
                	/*else if(e.getSource()==mi6)  //������ѯ
                	{		new checkono();

                	}*/

                	else if(e.getSource()==mi7)  //���ӹ���Ա����������������������������������������������
                	{
                        new addadmin();
                	}

                	else if(e.getSource()==mi8)
                	{
                        new deleteadmin();          //ɾ������Ա����������������������������������������

                	}

	                 else if(e.getSource()==mi10)    ///��������
	                 { 		new DHTable();


	                 }
	                 else if(e.getSource()==mi11){   //����ͳ��
	                	 	new orderdetail();
	                 }
	                 /*else if(e.getSource()==mi13){
	                	  	new checkono();
		             }*/


        }
}


//�������ݿ�/////////////////////////////////////////////////////////////////////////////////////////////////
class Database {

        private Statement stmt=null;
        ResultSet rs=null;
        private Connection conn=null;
        String sql;
        //String strurl=""jdbc:odbc:BKDY","sa",""";//TMIS student

        public Database(){

        }

        /** �����ݿ�����*/
        public void OpenConn()throws Exception{
                try{
                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        conn=DriverManager.getConnection("jdbc:odbc:BKDY","sa","");
                }
                catch(Exception e){
                        System.err.println("OpenConn:"+e.getMessage());
                }
        }

        /*ִ��sql��䣬���ؽ����rs*/
        public ResultSet executeQuery(String sql){
                stmt = null;
                rs=null;
                try{
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        rs=stmt.executeQuery(sql);
                }
                catch(SQLException e){
                        System.err.println("executeQuery:"+e.getMessage());
                }
                return rs;
        }

        /* ִ��sql���*/
        public void executeUpdate(String sql){
                stmt=null;
                rs=null;
                try{
                        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                        stmt.executeUpdate(sql);
                        conn.commit();
                }
                catch(SQLException e){
                        System.err.println("executeUpdate:"+e.getMessage());
                }
        }

        public void closeStmt(){
                try{
                        stmt.close();
                }
                catch(SQLException e){
                        System.err.println("closeStmt:"+e.getMessage());
                }
        }

        /* �ر����ݿ�����*/

        public void closeConn(){
                try{
                        conn.close();
                }
                catch(SQLException ex){
                        System.err.println("aq.closeConn:"+ex.getMessage());
                }
        }


}
