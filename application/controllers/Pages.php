<!-------------------------------------
Name: Gennette Sanders
Purpose: Controller for pages
---------------------------------------->

<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

    public function index()
    {
        $this->load->view('welcome_message');
    }

    public function showme($page = 'home')
	{
        if ( ! file_exists(APPPATH.'/views/pages/'.$page.'.php')) 
		{
			//Whoops, we don't have a page for that!
			show_404();
		}      

        $data['title'] = ucfirst($page); // Capitalize the first letter
		
		 /*
		 * Conditionally load data and scripts here.
		 * See the instructions for an example.
		 */
		 
		if ($page == 'home') {
			$data['homejs'] = $this->parser->parse('templates/home', [], TRUE);

		} else {
			$data['homejs'] = "";
		}
	
		if ($page == 'contact') {
			$data['contactjs'] = $this->parser->parse('templates/contact', [], TRUE);

		} else {
			$data['contactjs'] = "";
		}
	
		if ($page == 'assignment00') {
			$data['flowchartjs'] = $this->parser->parse('templates/flowchart', [], TRUE);
		} else {
			$data['flowchartjs'] = "";
		}
		
		if ($page == 'assignment01') {
			$data['flowchart01js'] = $this->parser->parse('templates/flowchart01', [], TRUE);
		} else {
			$data['flowchart01js'] = "";
		}
		if ($page == 'assignment02') {
			$data['flowchart02js'] = $this->parser->parse('templates/flowchart02', [], TRUE);
		} else {
			$data['flowchart02js'] = "";
		}
			
		if ($page == 'assignment03') {
			$data['flowchart03js'] = $this->parser->parse('templates/flowchart03', [], TRUE);
		} else {
			$data['flowchart03js'] = "";
		}

		if ($page == 'assignment04') {
			$data['flowchart04js'] = $this->parser->parse('templates/flowchart04', [], TRUE);
		} else {
			$data['flowchart04js'] = "";
		}
		
		if ($page == 'assignment05') {
			$data['flowchart05js'] = $this->parser->parse('templates/flowchart05', [], TRUE);
		} else {
			$data['flowchart05js'] = "";
		}
		
		if ($page == 'assignment06') {
			$data['flowchart06js'] = $this->parser->parse('templates/flowchart06', [], TRUE);
		} else {
			$data['flowchart06js'] = "";
		}
		
		if ($page == 'assignment07') {
			$data['flowchart07js'] = $this->parser->parse('templates/flowchart07', [], TRUE);
		} else {
			$data['flowchart07js'] = "";
		}
		
		if ($page == 'assignment08') {
			$data['flowchart08js'] = $this->parser->parse('templates/flowchart08', [], TRUE);
		} else {
			$data['flowchart08js'] = "";
		}
		
		if ($page == 'assignment09') {
			$data['flowchart09js'] = $this->parser->parse('templates/flowchart09', [], TRUE);
		} else {
			$data['flowchart09js'] = "";
		}
		
		if ($page == 'assignment10') {
			$data['flowchart10js'] = $this->parser->parse('templates/flowchart10', [], TRUE);
		} else {
			$data['flowchart10js'] = "";
		}
		
		if ($page == 'airline') {
			$data['airlinejs'] = $this->parser->parse('templates/airline', [], TRUE);
		} else {
			$data['airlinejs'] = "";
		}
		
		if ($page == 'gas') {
			$data['gasjs'] = $this->parser->parse('templates/airline', [], TRUE);
		} else {
			$data['gasjs'] = "";
		}
		
		if ($page == 'sales') {
			$data['salesjs'] = $this->parser->parse('templates/airline', [], TRUE);
		} else {
			$data['salesjs'] = "";
		}
		
		
		$this->load->view('templates/header', $data);
		$this->load->view('pages/'.$page, $data);
		$this->load->view('templates/footer', $data);
	}
}