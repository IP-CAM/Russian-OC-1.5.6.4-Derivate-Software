<?php  
class ControllerServicesServices extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->data['heading_title'] = $this->config->get('config_title');
		
		//Ссылки на статьи
		$this->data['article_1'] = $this->url->link('information/information&information_id=31', '', 'SSL');
		$this->data['article_2'] = $this->url->link('information/information&information_id=32', '', 'SSL');
		$this->data['article_3'] = $this->url->link('information/information&information_id=33', '', 'SSL');
		$this->data['article_4'] = $this->url->link('information/information&information_id=34', '', 'SSL');
		$this->data['article_5'] = $this->url->link('information/information&information_id=35', '', 'SSL');
		$this->data['article_6'] = $this->url->link('information/information&information_id=36', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/services/services.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/services/services.tpl';
			$this->data['template'] = $this->config->get('config_template');
		} else {
			$this->template = 'default/template/services/services.tpl';
		}

		$this->children = array(
			'common/footer',
			'common/header'
		);							
		$this->response->setOutput($this->render());
	}
}
?>