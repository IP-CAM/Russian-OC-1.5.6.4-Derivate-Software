<?php  
class ControllerCommonFooter extends Controller {
	protected function index() {
		$this->language->load('common/footer');

		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_service'] = $this->language->get('text_service');
		$this->data['text_extra'] = $this->language->get('text_extra');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_return'] = $this->language->get('text_return');
		$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_voucher'] = $this->language->get('text_voucher');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		$this->data['text_contact'] = $this->language->get('text_contact');

		$this->load->model('catalog/information');

		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$this->data['contact'] = $this->url->link('information/contact');
		$this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
		$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['manufacturer'] = $this->url->link('product/manufacturer');
		$this->data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		/*Ссылки в футере*/
        $this->data['rooms'] = $this->url->link('product/category&path=20_59', '', 'SSL');	
        $this->data['homes'] = $this->url->link('product/category&path=20_64', '', 'SSL');	
        $this->data['lots'] = $this->url->link('product/category&path=20_78', '', 'SSL');	
		$this->data['buildings'] = $this->url->link('product/category&path=20_79', '', 'SSL');
        $this->data['hotels'] = $this->url->link('product/category&path=20_84', '', 'SSL');
		$this->data['elite'] = $this->url->link('product/category&path=20_81', '', 'SSL');
		$this->data['business'] = $this->url->link('product/category&path=20_80', '', 'SSL');
		/*Основное меню*/
		/*1 часть уравнения*/
		$request_uri = explode('/', $this->request->server['REQUEST_URI']);
		$this->data['parts_uri'] = explode('.', $request_uri[1]);
		/*2 часть уравнения*/
		$this->data['about'] = $this->url->link('about/about', '', 'SSL');
		$this->data['sale'] = $this->url->link('product/category&path=20', '', 'SSL');
		$this->data['rent'] = $this->url->link('product/category&path=18', '', 'SSL');
		$this->data['services'] = $this->url->link('services/services', '', 'SSL');
		$this->data['contact'] = $this->url->link('information/contact', '', 'SSL');

		$this->data['menu_array'] = array(
		    'about'     => '<a href="/about.html">О компании</a>',
			'sale'      => '<a href="/sale.html">Продажа</a>',
			'rent'      => '<a href="/rent.html">Аренда</a>',
			'services'  => '<a href="/services.html">Услуги</a>',
			'contact'   => '<a href="/contact.html">Контакты</a>',
		);			
		/*Основное меню*/
				
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');

		
        /*Ссылки в футере*/
		$this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}

        // feedback form
        $setting = array(
            'id' => 0,
            'name' => 'on',
            'email' => 'on',
            'phone' => 'on',
            'text' => 'on',
            'r' => array('name' => 'on'),
            'module_title' => array(1 => 'Обратная связь'),
            'module_style' => 'classic'
        );

        $this->data['feedback_form'] = $this->getChild('module/feedback', $setting);

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
		} else {
			$this->template = 'default/template/common/footer.tpl';
		}

		$this->render();
	}
}
?>