//���ӹ���Աģ��


import java.awt.BorderLayout;
import javax.swing.JPanel;
import javax.swing.JFrame;
//import java.awt.Dimension;
import javax.swing.JLabel;
import java.awt.Rectangle;
import java.sql.ResultSet;

import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import javax.swing.SwingConstants;
import java.awt.Dimension;

public class addadmin extends JFrame {

	private static final long serialVersionUID = 1L;

	private JPanel jContentPane = null;

	private JLabel jLabel = null;

	private JLabel jLabel1 = null;

	private JLabel jLabel2 = null;

	private JTextField jTextField = null;

	private JPasswordField jPasswordField = null;

	private JPasswordField jPasswordField1 = null;

	private JButton jButton = null;

	private JButton jButton1 = null;

	/**
	 * This is the default constructor
	 */
	public addadmin() {
		super();
		initialize();
		setVisible(true);
		setLocation(300,200);
		setResizable(false);

	}

	/**
	 * This method initializes this
	 *
	 * @return void
	 */
	private void initialize() {
		this.setSize(270, 201);
		this.setContentPane(getJContentPane());
		this.setTitle("���������ʺ�");
	}

	/**
	 * This method initializes jContentPane
	 *
	 * @return javax.swing.JPanel
	 */
	private JPanel getJContentPane() {
		if (jContentPane == null) {
			jLabel2 = new JLabel();
			jLabel2.setBounds(new Rectangle(16, 90, 93, 28));
			jLabel2.setHorizontalAlignment(SwingConstants.CENTER);
			jLabel2.setText("ȷ������");
			jLabel1 = new JLabel();
			jLabel1.setBounds(new Rectangle(16, 52, 93, 28));
			jLabel1.setHorizontalAlignment(SwingConstants.CENTER);
			jLabel1.setText("��������");
			jLabel = new JLabel();
			jLabel.setBounds(new Rectangle(16, 13, 93, 28));
			jLabel.setHorizontalAlignment(SwingConstants.CENTER);
			jLabel.setText("�¹����ʺ�");
			jContentPane = new JPanel();
			jContentPane.setLayout(null);
			jContentPane.add(jLabel, null);
			jContentPane.add(jLabel1, null);
			jContentPane.add(jLabel2, null);
			jContentPane.add(getJTextField(), null);
			jContentPane.add(getJPasswordField(), null);
			jContentPane.add(getJPasswordField1(), null);
			jContentPane.add(getJButton(), null);
			jContentPane.add(getJButton1(), null);
		}
		return jContentPane;
	}

	/**
	 * This method initializes jTextField
	 *
	 * @return javax.swing.JTextField
	 */
	private JTextField getJTextField() {
		if (jTextField == null) {
			jTextField = new JTextField();
			jTextField.setBounds(new Rectangle(124, 13, 119, 28));
			jTextField.addFocusListener(new java.awt.event.FocusAdapter() {
				public void focusLost(java.awt.event.FocusEvent e) {
					try{
						Database DB=new Database();
						DB.OpenConn();
		           		String sql="select * from Login where UName='"+jTextField.getText()+"'";//ִ�е�sql���,�����ݿ��������������û���
		            	ResultSet rs=DB.executeQuery(sql);
		            	if(rs.next()){
		            		JOptionPane.showMessageDialog(null,"�����ʺ��Ѿ�����!!����������","Check again",JOptionPane.ERROR_MESSAGE);

		            		DB.closeConn();
		            	}

					}
					catch(Exception es){
						System.out.println(es);
					}


				}
			});
		}
		return jTextField;
	}

	/**
	 * This method initializes jPasswordField
	 *
	 * @return javax.swing.JPasswordField
	 */
	private JPasswordField getJPasswordField() {
		if (jPasswordField == null) {
			jPasswordField = new JPasswordField();
			jPasswordField.setBounds(new Rectangle(124, 52, 119, 28));
		}
		return jPasswordField;
	}

	/**
	 * This method initializes jPasswordField1
	 *
	 * @return javax.swing.JPasswordField
	 */
	private JPasswordField getJPasswordField1() {
		if (jPasswordField1 == null) {
			jPasswordField1 = new JPasswordField();
			jPasswordField1.setBounds(new Rectangle(124, 90, 119, 28));
		}
		return jPasswordField1;
	}

	/**
	 * This method initializes jButton
	 *
	 * @return javax.swing.JButton
	 */
	private JButton getJButton() {
		if (jButton == null) {
			jButton = new JButton();
			jButton.setBounds(new Rectangle(40, 130, 78, 24));
			jButton.setText("ȷ��");
			jButton.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {

					//String username=jTextField.getText();
			        char[] s=jPasswordField.getPassword();
			        char[] s1=jPasswordField1.getPassword();
			        String password=new String(s);
			        String password1=new String(s1);
			        Database DB=new Database();

			             try
			            {

			                if(jTextField.getText().length()!=0&&password.length()!=0&&password1.length()!=0)
			                {

			                	 if(password.equals(password1)){

			                		String sql1="insert into Login values('"+jTextField.getText()+"','"+password1+"')";
			                		DB.OpenConn();
			                		DB.executeUpdate(sql1);
			                		//System.out.println(password);
			                		//System.out.println(password1);

			                		JOptionPane.showMessageDialog(null,"����Ա�ʺ�������Ӽӳɹ�","ȷ��",JOptionPane.INFORMATION_MESSAGE);
			                		DB.closeConn();
			                		jTextField.setText(null);jPasswordField.setText(null);jPasswordField1.setText(null);
			                	 }
			                	 else JOptionPane.showMessageDialog(null,"ǰ���������벻��ȷ!!����������","Check again",JOptionPane.ERROR_MESSAGE);

			                }
			                else{
			                	JOptionPane.showMessageDialog(null,"�����ʺŻ����벻��Ϊ��!!����������","Check again",JOptionPane.ERROR_MESSAGE);
			                }
			            }
			             catch(Exception ex){
			            	 System.out.println(ex);
			             }

					// TODO Auto-generated Event stub actionPerformed()
				}
			});
		}
		return jButton;
	}

	/**
	 * This method initializes jButton1
	 *
	 * @return javax.swing.JButton
	 */
	private JButton getJButton1() {
		if (jButton1 == null) {
			jButton1 = new JButton();
			jButton1.setBounds(new Rectangle(140, 130, 78, 24));
			jButton1.setText("ȡ��");
			jButton1.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					setVisible(false); // TODO Auto-generated Event stub actionPerformed()
				}
			});
		}
		return jButton1;
	}

}  //  @jve:decl-index=0:visual-constraint="171,-7"
