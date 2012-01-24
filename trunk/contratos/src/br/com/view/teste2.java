package br.com.view;
import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

public class teste2 extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel jContentPane = null;
	private JScrollPane jScrollPane0;
	/**
	 * This is the default constructor
	 */
	public teste2() {
		super();
		initialize();
	}

	private void initialize() {
		setTitle("JFrame");
		setContentPane(getJContentPane());
		setSize(639, 253);
	}

	private JPanel getJContentPane() {
		if (jContentPane == null) {
			jContentPane = new JPanel();
			jContentPane.setLayout(new BorderLayout());
		}
		return jContentPane;
	}

	private JScrollPane getJScrollPane0() {
		if (jScrollPane0 == null) {
			jScrollPane0 = new JScrollPane();
			
		}
		return jScrollPane0;
	}

}
