//ɾ������Աģ��
//import java.awt.BorderLayout;
import javax.swing.JPanel;
import javax.swing.JFrame;
//import java.awt.Dimension;
import javax.swing.JLabel;
import java.awt.Rectangle;
import java.sql.ResultSet;

import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
//import javax.swing.JComboBox;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JPasswordField;

public class deleteadmin extends JFrame {

	private static final long serialVersionUID = 1L;

	private JPanel jContentPane = null;

	private JLabel jLabel = null;

	//private JComboBox jComboBox = null;

	private JButton jButton = null;

	ResultSet rs;

	private JTextField jTextField = null;

	private JLabel jLabel1 = null;

	private JPasswordField jPasswordField = null;

	private JButton jButton1 = null;

	public deleteadmin() {
		super();
		initialize();
		setVisible(true);
		setLocation(300,200);
		setResizable(false);

	}

	private void initialize() {
		this.setSize(359, 164);
		this.setContentPane(getJContentPane());
		this.setTitle("JFrame");
	}

	private JPanel getJContentPane() {
		if (jContentPane == null) {
			jLabel1 = new JLabel();
			jLabel1.setBounds(new Rectangle(14, 51, 149, 28));
			jLabel1.setHorizontalAlignment(SwingConstants.CENTER);
			jLabel1.setText("���������Ա�ʺ�����");
			jLabel = new JLabel();
			jLabel.setBounds(new Rectangle(14, 14, 149, 28));
			jLabel.setHorizontalAlignment(SwingConstants.CENTER);
			jLabel.setText("����Ҫɾ���Ĺ���Ա�ʺ�");
			jContentPane = new JPanel();
			jContentPane.setLayout(null);
			jContentPane.add(jLabel, null);

			jContentPane.add(getJButton(), null);
			jContentPane.add(getJTextField(), null);
			jContentPane.add(jLabel1, null);
			jContentPane.add(getJPasswordField(), null);
			jContentPane.add(getJButton1(), null);
		}
		return jContentPane;
	}
	private JButton getJButton() {
		if (jButton == null) {
			jButton = new JButton("ȷ��");
			jButton.setBounds(new Rectangle(44, 91, 89, 24));
			jButton.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					try{
						Database DB = new Database();
						DB.OpenConn();
						String sql="select * from Login where UName='"+jTextField.getText()+"'";
						char[] s=jPasswordField.getPassword();
				        String password=new String(s);
						ResultSet rs=DB.executeQuery(sql);

						if(rs.next()){
							if(password.equals(rs.getString("UPassword"))){

								System.out.println(jTextField.getText());
				    			System.out.println(password);
				    			System.out.println(rs.getString("UPassword"));
				    			String sql0="delete from Login where UName='"+jTextField.getText()+"'";
								DB.OpenConn();
				    			DB.executeQuery(sql0);

				    			JOptionPane.showMessageDialog(null,"�ʺ�ɾ���ɹ�!!","ȷ��",JOptionPane.INFORMATION_MESSAGE);
				    			jTextField.setText(null);jPasswordField.setText(null);
				    			DB.closeConn();
							}else JOptionPane.showMessageDialog(null,"�������벻��ȷ!!","����",JOptionPane.ERROR_MESSAGE);
						}
						else JOptionPane.showMessageDialog(null,"�ʺŲ�����!!����������","Check again",JOptionPane.ERROR_MESSAGE);
					}
					catch(Exception ex){
						System.out.println(ex);
					}

				}
			});
		}
		return jButton;
	}



	private JTextField getJTextField() {
		if (jTextField == null) {
			jTextField = new JTextField();
			jTextField.setBounds(new Rectangle(182, 15, 149, 28));
		}
		return jTextField;
	}

	private JPasswordField getJPasswordField() {
		if (jPasswordField == null) {
			jPasswordField = new JPasswordField();
			jPasswordField.setBounds(new Rectangle(182, 49, 149, 28));
		}
		return jPasswordField;
	}


	private JButton getJButton1() {
		if (jButton1 == null) {
			jButton1 = new JButton();
			jButton1.setBounds(new Rectangle(195, 90, 88, 24));
			jButton1.setText("ȡ��");
			jButton1.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					setVisible(false); // TODO Auto-generated Event stub actionPerformed()
				}
			});
		}
		return jButton1;
	}

}  //  @jve:decl-index=0:visual-constraint="10,10"
