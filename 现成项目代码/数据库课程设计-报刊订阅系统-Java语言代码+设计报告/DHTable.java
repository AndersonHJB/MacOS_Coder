//��������ģ��
import javax.swing.*;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.table.*;

import java.sql.ResultSet;
import java.sql.Statement;
public class DHTable extends JFrame
{	static DefaultTableModel data;
	private ResultSet rs ;
	JTable table;
	public DHTable()
	{ 	super("������ѯ�б�");
		setSize(600,500);
		setResizable(false);



		Container c=getContentPane();
		c.setLayout(new FlowLayout());
		JButton []b={new JButton("��Ӷ���"),new JButton("ɾ������"),new JButton("�޸Ķ���"),new JButton("����Ų�ѯ����"),new JButton("��������ѯ����")};
		for(int i=0;i<5;i++)
			c.add(b[i]);
		String [] s = {"�������","��������","�����绰","������ַ"};

		data = new DefaultTableModel(s,0);
		table = new JTable(data);
		table.setEnabled(false);
		table.setPreferredScrollableViewportSize(new Dimension(500,340));
		table.setAutoResizeMode(JTable.AUTO_RESIZE_NEXT_COLUMN);
		//data=new DefaultTableModel();
		JScrollPane sp=new JScrollPane(table);
		c.add(sp);


		Statement stmt = new Connectdatabase().Connect();
	    try{
		   rs=stmt.executeQuery("select * from Customer");
		   while(rs.next()){
			   String cid= rs.getString("Cid");
			   String cname = rs.getString("Cname");
			   String phone = rs.getString("Phone");
			   String address = rs.getString("Address");

			   String[] str = {cid,cname,phone,address};
			   data.addRow(str);
		  }
	   }
	   catch(Exception e){
		   System.out.println("��ѯ�쳣");
	   }
	   setVisible(true);
	   setLocation(300,250);

	   b[0].addActionListener(new ActionListener(){                      /////////////��Ӷ���
			public  void actionPerformed(final ActionEvent e){

					final tjdh a=new tjdh();
					a.setBounds(430,350,220,240);
		            a.setVisible(true);
		            a.setSize(260, 300);
		            a.setResizable(false);
				}
			});
	    b[2].addActionListener(new ActionListener(){                      ///////////////�޸Ķ���
			public  void actionPerformed(final ActionEvent e){

					final xgdh a=new xgdh();
					a.setBounds(430,350,220,240);
		            a.setVisible(true);
		            a.setSize(260, 350);
		            a.setResizable(false);
				}
			});
	    b[1].addActionListener(new ActionListener(){                      //////////////ɾ������
			public  void actionPerformed(final ActionEvent e){

					final scdh a=new scdh();
					a.setBounds(430,350,220,240);
		            a.setVisible(true);
		            a.setSize(260, 300);
		            a.setResizable(false);
			}
			});
	    b[3].addActionListener(new ActionListener(){                      //////////////����Ų�ѯ
			public  void actionPerformed(final ActionEvent e){

					final checkcid a=new checkcid();
					a.setBounds(430,350,220,240);
		            a.setVisible(true);
		            a.setSize(280, 400);
		            a.setResizable(false);
			}
			});
	    b[4].addActionListener(new ActionListener(){                      //////////////��������ѯ
			public  void actionPerformed(final ActionEvent e){

					final checkname a=new checkname();
					a.setBounds(430,350,220,240);
		            a.setVisible(true);
		            a.setSize(280, 400);
		            a.setResizable(false);
			}
			});
	}
}

//��Ӷ���/////////////////��Ӷ���////////////////��Ӷ���/////////////////��Ӷ���//////////////////////////////////////////////////////////
class tjdh   extends   JFrame  implements ActionListener
{
      JLabel lb1,lb2,lb3,lb4;
      JTextField  tf1,tf2,tf3,tf4;
      JButton  bt1,bt2;
      tjdh()
      {
              setTitle("���Ӷ���");
              this.getContentPane().setLayout(null);
              lb1=new JLabel("�������");//Ŀ¼���  ѧ��
              tf1=new JTextField(10);
              lb2=new JLabel("��������"); //Ŀ¼����  ����
              tf2=new JTextField(10);
              lb3=new JLabel("�����绰");//Ŀ¼����  ����
              tf3=new JTextField(10);
              lb4=new JLabel("������ַ");
              tf4=new JTextField(20);
              bt1=new JButton("���");
              bt2=new JButton("ȡ��");

              lb1.setFont(new Font("����",Font.BOLD,12));
              lb2.setFont(new Font("����",Font.BOLD,12));
              lb3.setFont(new Font("����",Font.BOLD,12));
              lb4.setFont(new Font("����",Font.BOLD,12));
              tf1.setFont(new Font("����",Font.BOLD,12));
              tf2.setFont(new Font("����",Font.BOLD,12));
              tf3.setFont(new Font("����",Font.BOLD,12));
              tf4.setFont(new Font("����",Font.BOLD,12));
              bt1.setFont(new Font("����",Font.BOLD,12));
              bt2.setFont(new Font("����",Font.BOLD,12));

              lb1.setBounds(50,40,100,30);tf1.setBounds(105,40,100,30);
              lb2.setBounds(50,70,100,30);tf2.setBounds(105,70,100,30);
              lb3.setBounds(50,100,100,30);tf3.setBounds(105,100,100,30);
              lb4.setBounds(50,130,100,30);tf4.setBounds(105,130,100,30);
              bt1.setBounds(35,220,80,30);bt2.setBounds(125,220,80,30);

              Container con=this.getContentPane();
              con.add(lb1);con.add(tf1);
              con.add(lb2);con.add(tf2);
              con.add(lb3);con.add(tf3);
              con.add(lb4);con.add(tf4);
              con.add(bt1);con.add(bt2);
              bt1.addActionListener(this);
              bt2.addActionListener(this);
              this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
      }
    public  void  actionPerformed(ActionEvent e)
      {		//Statement stmt;
  	  		//stmt = new Connectdatabase().Connect();

    	Database DB=new Database();
        if(e.getSource()==bt1){

                try
                {	    String sql="select Cid from Customer where Cid='"+tf1.getText()+"'";
                        DB.OpenConn();
				        ResultSet rs=DB.executeQuery(sql);


		                if(rs.next())
                         JOptionPane.showMessageDialog(this,"��������Ѵ��ڣ�����������!!","����!",JOptionPane.ERROR_MESSAGE);

		                else
		                {if(tf1.getText().length()!=0 && tf2.getText().length()!=0 && tf3.getText().length()!=0)
		                	{
			                    String sql1="insert into  Customer values("+Integer.parseInt(tf1.getText())+",'"+tf2.getText()+"','"+tf3.getText()+"','"+tf4.getText()+"')";
                                DB.OpenConn();
                                DB.executeUpdate(sql1);

                                DHTable.data.setRowCount(0);                        //������
                               // Statement stmt1 = new Connectdatabase().Connect();
                        	    try{
                        		    rs=DB.executeQuery("select * from Customer");

                        		   while(rs.next()){
                        			   String Did= rs.getString("Cid");
                        			   String Dname = rs.getString("Cname");
                        			   String UnitPrice = rs.getString("Phone");
                        			   String Ifo = rs.getString("Address");

                        			   String[] str = {Did,Dname,UnitPrice,Ifo};
                        			   DHTable.data.addRow(str);                       ////��ʾ ���������Ϣ
                        		   }
                        		   JOptionPane.showMessageDialog(this,"������Ϣ��ӳɹ�!!","������Ϣ��ӶԻ���",JOptionPane.INFORMATION_MESSAGE);
                        	    }
                        	   catch(Exception ee){
                        		   System.out.println("����쳣");
                        	   }

                                tf1.setText(null);tf2.setText(null);tf3.setText(null);tf4.setText(null);



		                	}
                        else
                            JOptionPane.showMessageDialog(this,"���������Ϣ����!!","Ŀ¼��Ϣ��ӶԻ���",JOptionPane.INFORMATION_MESSAGE);
		                }
                }

            catch(Exception ex)
                {
                        System.out.println(ex);
                        JOptionPane.showMessageDialog(this,"������Ź�������������","����",JOptionPane.ERROR_MESSAGE);
                }
                finally
                {
                	DB.closeStmt();
                	DB.closeConn();
                }
        }



        if(e.getSource()==bt2)
          setVisible(false);
        }
}

//ɾ������////////////////ɾ������////////////////ɾ������////////////////ɾ������////////////////ɾ������////////////////ɾ������//////////////
class scdh extends JFrame implements ActionListener{
	  JLabel lb0,lb1,lb2,lb3;
	  JTextField  tf1,tf2;
	  JButton  bt1,bt2,bt3;

  scdh(){
	  setTitle("ɾ������");
	  this.getContentPane().setLayout(null);

	  lb1=new JLabel("��������Ҫɾ�������ı��");
	  lb0=new JLabel("��Ҫɾ���Ķ�������Ϊ��");
	  lb2=new JLabel("�������");
	  tf1=new JTextField(10);
	  lb3=new JLabel("��������");
	  tf2=new JTextField(10);
	  bt1=new JButton("ɾ��");
      bt2=new JButton("ȡ��");
      bt3=new JButton("��ѯ");
      lb0.setFont(new Font("����",Font.BOLD,12));
      lb1.setFont(new Font("����",Font.BOLD,12));
      lb2.setFont(new Font("����",Font.BOLD,12));
      lb3.setFont(new Font("����",Font.BOLD,12));

      lb1.setBounds(20,20,300,30);tf1.setBounds(80,50,100,30);
      lb2.setBounds(20,50,100,30);lb3.setBounds(20,120,100,30);
      tf2.setBounds(80,120,100,30);lb0.setBounds(20,90,300,30);

      bt1.setBounds(35,180,80,30);bt2.setBounds(125,180,80,30);
      bt3.setBounds(185,50,60,30);
      Container con=this.getContentPane();
      con.add(lb1);con.add(tf1); con.add(lb3);
      con.add(lb2);con.add(tf2);
      con.add(bt1);con.add(bt2);
      con.add(bt3);con.add(lb0);
      bt1.addActionListener(this);
      bt2.addActionListener(this);
      bt3.addActionListener(this);
      bt1.setEnabled(false);
      this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
  }

	public void actionPerformed(ActionEvent e) {
		Database DB=new Database();
	    if(e.getSource()==bt3){                   //��ѯ��ť
			try{
				String sql0="select Cid from OrderDetail where Cid='"+tf1.getText()+"'";
				String sql="select * from Customer where Cid='"+tf1.getText()+"'";
				DB.OpenConn();
				ResultSet rs=DB.executeQuery(sql);
				ResultSet rs0=DB.executeQuery(sql0);
				if(rs0.next()){
					JOptionPane.showMessageDialog(this,"�˶����ѱ��������ã�����ɾ������ɾ���йض�������ɾ���˶���!!","Check again",JOptionPane.ERROR_MESSAGE);
				}
				else{
					if(rs.next()){
						tf2.setText(rs.getString("Cname"));
						bt1.setEnabled(true);
						//bt3.setEnabled(false);
						tf2.setEnabled(false);           ////����д  ��������

					}
					else{
						JOptionPane.showMessageDialog(this,"����ı�ż�¼������!!","Check again",JOptionPane.ERROR_MESSAGE);
					}
				}
				//DB.closeStmt();
				}
			catch(Exception es){
				es.printStackTrace();
			}
			finally
	        {
	        	DB.closeStmt();
	        	DB.closeConn();
	        }
	    }

	    if(e.getSource()==bt1){
	    	try{                            ////ɾ����ť

	    		String sql="delete from Customer where Cid='"+tf1.getText()+"'";
	    		DB.OpenConn();
    			DB.executeUpdate(sql);
    			DHTable.data.setRowCount(0);
    			ResultSet rs=DB.executeQuery("select * from Customer");

     		   while(rs.next()){
     			   String Did= rs.getString("Cid");
     			   String Dname = rs.getString("Cname");
     			   String UnitPrice = rs.getString("Phone");
     			   String Ifo = rs.getString("Address");

     			   String[] str = {Did,Dname,UnitPrice,Ifo};
     			   DHTable.data.addRow(str);
     		   }
	    		JOptionPane.showMessageDialog(this,"Ŀ¼��¼��ɾ��!!","ɾ���Ի���",JOptionPane.INFORMATION_MESSAGE);
	    		tf1.setText(null);tf2.setText(null);
      	}

	    catch(Exception ex){
	    	ex.printStackTrace();
	    }
	    finally
        {
        	DB.closeStmt();
        	DB.closeConn();
        }
	    }
	    if(e.getSource()==bt2){                ///ȡ����ť
			setVisible(false);
		}
	}
}

//�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���/////////////�޸Ķ���///////////
class xgdh extends JFrame implements ActionListener{
	  JLabel lb0,lb1,lb2,lb3,lb4,lb5;
	  JTextField  tf1,tf2,tf3,tf4;
	  JButton  bt1,bt2,bt3,bt4;

   xgdh(){
	  setTitle("�޸Ķ�����Ϣ");
	  this.getContentPane().setLayout(null);

	  lb1=new JLabel("��������Ҫ�޸Ķ����ı��");///
	  lb0=new JLabel("��Ҫ�޸ĵĶ�����ϢΪ��");  //
	  lb2=new JLabel("�������");				//lb2--tf1
	  tf1=new JTextField(10);
	  lb3=new JLabel("��������");				//lb3==tf2
	  tf2=new JTextField(10);
	  lb4=new JLabel("��ϵ�绰");				//lb4==tf3
	  tf3=new JTextField(20);
	  lb5=new JLabel("��ϵ��ַ");				//lb5==tf4
	  tf4=new JTextField(50);

	  bt1=new JButton("�޸�");
	  bt2=new JButton("ȡ��");
	  bt3=new JButton("��ѯ");
	  bt4=new JButton("ȷ��");
	  lb0.setFont(new Font("����",Font.BOLD,12));
	  lb1.setFont(new Font("����",Font.BOLD,12));
	  lb2.setFont(new Font("����",Font.BOLD,12));
	  lb3.setFont(new Font("����",Font.BOLD,12));
	  lb4.setFont(new Font("����",Font.BOLD,12));
	  lb5.setFont(new Font("����",Font.BOLD,12));

	  lb1.setBounds(20,20,300,30);tf1.setBounds(80,50,100,30);
	  lb2.setBounds(20,50,100,30);lb3.setBounds(20,120,100,30);
	  lb4.setBounds(20,150,100,30);lb5.setBounds(20,180,100,30);
	  tf2.setBounds(80,120,140,30);lb0.setBounds(20,90,300,30);
	  tf3.setBounds(80,150,140,30);tf4.setBounds(80,180,140,30);

	  bt1.setBounds(90,220,80,30);bt2.setBounds(150,260,80,30);
	  bt3.setBounds(190,50,60,30);bt4.setBounds(35,260,80,30);
	  Container con=this.getContentPane();
	  con.add(lb1);con.add(tf1); con.add(lb3);con.add(lb4);con.add(lb5);
	  con.add(lb2);con.add(tf2);con.add(tf3);con.add(tf4);
	  con.add(bt1);con.add(bt2);con.add(bt4);
	  con.add(bt3);con.add(lb0);
   	  bt1.addActionListener(this);
   	  bt2.addActionListener(this);
   	  bt3.addActionListener(this);
   	  bt4.addActionListener(this);
   	  bt1.setEnabled(false);
   	  bt4.setEnabled(false);

      this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
}
   public void actionPerformed(ActionEvent e) {
		Database DB=new Database();

	    if(e.getSource()==bt3){                   //��ѯ��ť
			try{
				String sql="select * from Customer where Cid='"+tf1.getText()+"'";
				DB.OpenConn();
				ResultSet rs = DB.executeQuery(sql);
				if(rs.next()){
					tf2.setText(rs.getString("Cname"));
					tf3.setText(rs.getString("Phone"));
					tf4.setText(rs.getString("Address"));
					bt3.setEnabled(true);
					bt1.setEnabled(true);
					bt4.setEnabled(true);
					tf2.setEnabled(false);           ////����д  ��������
					tf3.setEnabled(false);
					tf4.setEnabled(false);
				}
				else{
					JOptionPane.showMessageDialog(this,"����ı�ż�¼������!!","Check again",JOptionPane.ERROR_MESSAGE);
				}
			}

				//DB.closeStmt();

			catch(Exception es){
				es.printStackTrace();
			}
			finally
	        {
	        	DB.closeStmt();
	        	DB.closeConn();
	        }
	    }
	    if(e.getSource()==bt1){                       //�޸İ�ť
	    	tf2.setEnabled(true);                     //����д��Ϊ������
			tf3.setEnabled(true);
			tf4.setEnabled(true);


	    }
	    String cname=tf2.getText();
	    String phone=tf3.getText();
	    String address=tf4.getText();

	    if(e.getSource()==bt4){                      //ȷ����ť
	    	try{
	    		String sql="update Customer set Cid='"+tf1.getText()+"',Cname='"+cname+"',Phone='"+phone+"',Address='"+address+"'where Cid='"+tf1.getText()+"'";
	    		DB.OpenConn();
    			DB.executeUpdate(sql);
    			DHTable.data.setRowCount(0);                    //������������
    			ResultSet rs=DB.executeQuery("select * from Customer");
    			while(rs.next()){
      			   String Cid= rs.getString("Cid");
      			   String Cname = rs.getString("Cname");
      			   String Phone = rs.getString("Phone");
      			   String Address= rs.getString("Address");

      			   String[] str = {Cid,Cname,Phone,Address};
      			   DHTable.data.addRow(str);                     //��ʾ���������Ϣ
      		   }

    			tf1.setText(null);tf2.setText(null);tf3.setText(null);tf4.setText(null);



    			JOptionPane.showMessageDialog(this,"�޸ĳɹ�!","�޸ĶԻ���",JOptionPane.INFORMATION_MESSAGE);

				}
				catch(Exception ex){
					ex.printStackTrace();
				}
				finally
                {
                	DB.closeStmt();
                	DB.closeConn();
                }
	    }
	    if(e.getSource()==bt2){                      //ȡ����ť
	    	setVisible(false);
	    }

   }


}

///////����Ų�ѯ����/////////////
class checkcid extends JFrame implements ActionListener{
	  JLabel lb0,lb1,lb2,lb3,lb4,lb5;
	  JTextField  tf1,tf2,tf3,tf4;
	  JButton  bt1,bt2,bt3,bt4;

 checkcid(){
	  setTitle("��ѯ������Ϣ");
	  this.getContentPane().setLayout(null);

	  lb1=new JLabel("��������Ҫ��ѯ�����ı��");///
	  lb0=new JLabel("����ѯ�Ķ�����ϢΪ��");  //
	  lb2=new JLabel("�������");				//lb2--tf1
	  tf1=new JTextField(10);
	  lb3=new JLabel("��������");				//lb3==tf2
	  tf2=new JTextField(10);
	  lb4=new JLabel("��ϵ�绰");				//lb4==tf3
	  tf3=new JTextField(20);
	  lb5=new JLabel("��ϵ��ַ");				//lb5==tf4
	  tf4=new JTextField(50);
	  bt2=new JButton("ȡ��");
	  bt3=new JButton("��ѯ");
	  bt4=new JButton("ȷ��");
	  lb0.setFont(new Font("����",Font.BOLD,12));
	  lb1.setFont(new Font("����",Font.BOLD,12));
	  lb2.setFont(new Font("����",Font.BOLD,12));
	  lb3.setFont(new Font("����",Font.BOLD,12));
	  lb4.setFont(new Font("����",Font.BOLD,12));
	  lb5.setFont(new Font("����",Font.BOLD,12));

	  lb1.setBounds(20,20,300,30);tf1.setBounds(80,50,100,30);
	  lb2.setBounds(20,50,100,30);lb3.setBounds(20,120,100,30);
	  lb4.setBounds(20,150,100,30);lb5.setBounds(20,180,100,30);
	  tf2.setBounds(80,120,145,30);lb0.setBounds(20,90,300,30);
	  tf3.setBounds(80,150,145,30);tf4.setBounds(80,180,145,30);

	  bt2.setBounds(150,260,80,30);
	  bt3.setBounds(190,50,60,30);bt4.setBounds(35,260,80,30);
	  Container con=this.getContentPane();
	  con.add(lb1);con.add(tf1); con.add(lb3);con.add(lb4);con.add(lb5);
	  con.add(lb2);con.add(tf2);con.add(tf3);con.add(tf4);
	  con.add(bt2);con.add(bt4);
	  con.add(bt3);con.add(lb0);
 	  bt2.addActionListener(this);
 	  bt3.addActionListener(this);
 	  bt4.addActionListener(this);


    this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
}
 public void actionPerformed(ActionEvent e) {
		Database DB=new Database();

	    if(e.getSource()==bt3){                   //��ѯ��ť
			try{
				String sql="select * from Customer where Cid='"+tf1.getText()+"'";
				DB.OpenConn();
				ResultSet rs = DB.executeQuery(sql);
				if(rs.next()){
					tf2.setText(rs.getString("Cname"));
					tf3.setText(rs.getString("Phone"));
					tf4.setText(rs.getString("Address"));
					tf2.setEnabled(false);           ////����д  ��������
					tf3.setEnabled(false);
					tf4.setEnabled(false);
				}
				else{
					JOptionPane.showMessageDialog(this,"����ı�ż�¼������!!","Check again",JOptionPane.ERROR_MESSAGE);
				}
			}

				//DB.closeStmt();

			catch(Exception es){
				es.printStackTrace();
			}
			finally
	        {
	        	DB.closeStmt();
	        	DB.closeConn();
	        }
	    }

	    if(e.getSource()==bt4){                      //ȷ����ť
	    	setVisible(false);
	    }
	    if(e.getSource()==bt2){                      //ȡ����ť
	    	setVisible(false);
	    }

 }


}

///////��������ѯ����/////////////
class checkname extends JFrame implements ActionListener{
	  JLabel lb0,lb1,lb2,lb3,lb4,lb5;
	  JTextField  tf1,tf2,tf3,tf4;
	  JButton  bt1,bt2,bt3,bt4;

 checkname(){
	  setTitle("��ѯ������Ϣ");
	  this.getContentPane().setLayout(null);

	  lb1=new JLabel("��������Ҫ��ѯ�����ı��");///
	  lb0=new JLabel("����ѯ�Ķ�����ϢΪ��");  //
	  lb2=new JLabel("��������");				//lb2--tf1
	  tf1=new JTextField(10);
	  lb3=new JLabel("�������");				//lb3==tf2
	  tf2=new JTextField(10);
	  lb4=new JLabel("��ϵ�绰");				//lb4==tf3
	  tf3=new JTextField(20);
	  lb5=new JLabel("��ϵ��ַ");				//lb5==tf4
	  tf4=new JTextField(50);
	  bt2=new JButton("ȡ��");
	  bt3=new JButton("��ѯ");
	  bt4=new JButton("ȷ��");
	  lb0.setFont(new Font("����",Font.BOLD,12));
	  lb1.setFont(new Font("����",Font.BOLD,12));
	  lb2.setFont(new Font("����",Font.BOLD,12));
	  lb3.setFont(new Font("����",Font.BOLD,12));
	  lb4.setFont(new Font("����",Font.BOLD,12));
	  lb5.setFont(new Font("����",Font.BOLD,12));

	  lb1.setBounds(20,20,300,30);tf1.setBounds(80,50,100,30);
	  lb2.setBounds(20,50,100,30);lb3.setBounds(20,120,100,30);
	  lb4.setBounds(20,150,100,30);lb5.setBounds(20,180,100,30);
	  tf2.setBounds(80,120,145,30);lb0.setBounds(20,90,300,30);
	  tf3.setBounds(80,150,145,30);tf4.setBounds(80,180,145,30);

	  bt2.setBounds(150,260,80,30);
	  bt3.setBounds(190,50,60,30);bt4.setBounds(35,260,80,30);
	  Container con=this.getContentPane();
	  con.add(lb1);con.add(tf1); con.add(lb3);con.add(lb4);con.add(lb5);
	  con.add(lb2);con.add(tf2);con.add(tf3);con.add(tf4);
	  con.add(bt2);con.add(bt4);
	  con.add(bt3);con.add(lb0);
 	  bt2.addActionListener(this);
 	  bt3.addActionListener(this);
 	  bt4.addActionListener(this);


    this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
}
 public void actionPerformed(ActionEvent e) {
		Database DB=new Database();

	    if(e.getSource()==bt3){                   //��ѯ��ť
			try{
				String sql="select * from Customer where Cname='"+tf1.getText()+"'";
				DB.OpenConn();
				ResultSet rs = DB.executeQuery(sql);
				if(rs.next()){
					tf2.setText(rs.getString("Cid"));
					tf3.setText(rs.getString("Phone"));
					tf4.setText(rs.getString("Address"));
					tf2.setEnabled(false);           ////����д  ��������
					tf3.setEnabled(false);
					tf4.setEnabled(false);
				}
				else{
					JOptionPane.showMessageDialog(this,"����Ķ�����������!!","Check again",JOptionPane.ERROR_MESSAGE);
				}
			}


			catch(Exception es){
				es.printStackTrace();
			}
			finally
	        {
	        	DB.closeStmt();
	        	DB.closeConn();
	        }
	    }

	    if(e.getSource()==bt4){                      //ȷ����ť
	    	setVisible(false);
	    }
	    if(e.getSource()==bt2){                      //ȡ����ť
	    	setVisible(false);
	    }

 }


}