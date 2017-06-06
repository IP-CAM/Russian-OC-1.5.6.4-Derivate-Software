<?php
class ControllerCommonHeader extends Controller {
	protected function index() {
		
		/*Определение мобильного устройства*/
		$this->data['mobile']  = isMobile;    /*мобильный агент*/
		$this->data['tablet']  = isTablet;    /*агент планшета*/
		$this->data['ios']     = isiOS;       /*агент ios*/
		$this->data['android'] = isAndroidOS; /*агент android*/
		$this->data['getbrowser'] = browser_detect; /*броузер ПК*/
		$this->data['getplatform'] = platform_detect; /*операционная система устройства*/
		/*Определение мобильного устройства*/
	
		$this->data['title'] = $this->document->getTitle();

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (isset($this->session->data['error']) && !empty($this->session->data['error'])) {
			$this->data['error'] = $this->session->data['error'];

			unset($this->session->data['error']);
		} else {
			$this->data['error'] = '';
		}

		$this->data['base'] = $server;
		$this->data['description'] = $this->document->getDescription();
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		$this->data['lang'] = $this->language->get('code');
		$this->data['direction'] = $this->language->get('direction');
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$this->data['name'] = $this->config->get('config_name');

		if ($this->config->get('config_icon') && file_exists(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$this->data['icon'] = '';
		}

		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}		

		$this->language->load('common/header');

		$this->data['text_home'] = $this->language->get('text_home');
		$this->data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$this->data['text_search'] = $this->language->get('text_search');
		$this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_checkout'] = $this->language->get('text_checkout');
		$this->data['tlinks'] = $this->language->get('tlinks');
		$this->data['tsettings'] = $this->language->get('tsettings');
		$this->data['tcategory'] = $this->language->get('tcategory');

		$this->data['home'] = $this->url->link('common/home');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
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
		
		// Daniel's robot detector
		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", trim($this->config->get('config_robots')));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		// A dirty hack to try to set a cookie for the multi-store feature
		$this->load->model('setting/store');

		$this->data['stores'] = array();

		if ($this->config->get('config_shared') && $status) {
			$this->data['stores'][] = $server . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();

			$stores = $this->model_setting_store->getStores();

			foreach ($stores as $store) {
				$this->data['stores'][] = $store['url'] . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			}
		}

		// Search		
		if (isset($this->request->get['search'])) {
			$this->data['search'] = $this->request->get['search'];
		} else {
			$this->data['search'] = '';
		}
        $this->load->model('catalog/category');
        //Аренда $this->data['arenda']
        $arenda = $this->model_catalog_category->getCategories(18);
        foreach($arenda as $arend){
            $this->data['arends'][] = array(
                'name'     => $arend['name'],
                'href'     => $this->url->link('product/category', 'path=' . $arend['category_id'])
            );
       }

        $prodaga = $this->model_catalog_category->getCategories(20);
        foreach($prodaga as $prodag){
            $this->data['prodagas'][] = array(
                'name'     => $prodag['name'],
                'href'     => $this->url->link('product/category', 'path=' . $prodag['category_id'])
            );
        }
		
		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$product_total = $this->model_catalog_product->getTotalProducts($data);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);						
				}

				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		/*Новое меню*/
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		$this->data['categories_object'] = array();

		$needed_category_array = array('59', '64', '78', '79', '81', '84' , '80');
		
		foreach ($needed_category_array as $needed) {
		
		    $categories_object = $this->model_catalog_category->SelectCategoryFromId($needed);
		
		    foreach ($categories_object as $category) {
			    $this->data['categories_object'][] = array(
					'name'     => $category['name'],
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id']),
					'active'   => in_array($category['category_id'], $parts)
				);
		    }
		}
		/*Новое меню*/
		
		$this->children = array(
			'module/language',
			'module/currency',
			'module/cart'
		);

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/header.tpl';
		} else {
			$this->template = 'default/template/common/header.tpl';
		}

		$this->render();
	} 	
	
	function getOS($userAgent) {
  // Создадим список операционных систем в виде элементов массива
    $oses = array (
        'iPhone' => '(iPhone)',
        'Windows 3.11' => 'Win16',
        'Windows 95' => '(Windows 95)|(Win95)|(Windows_95)', // Используем регулярное выражение
        'Windows 98' => '(Windows 98)|(Win98)',
        'Windows 2000' => '(Windows NT 5.0)|(Windows 2000)',
        'Windows XP' => '(Windows NT 5.1)|(Windows XP)',
        'Windows 2003' => '(Windows NT 5.2)',
        'Windows Vista' => '(Windows NT 6.0)|(Windows Vista)',
        'Windows 7' => '(Windows NT 6.1)|(Windows 7)',
        'Windows NT 4.0' => '(Windows NT 4.0)|(WinNT4.0)|(WinNT)|(Windows NT)',
        'Windows ME' => 'Windows ME',
        'Open BSD'=>'OpenBSD',
        'Sun OS'=>'SunOS',
        'Linux'=>'(Linux)|(X11)',
        'Safari' => '(Safari)',
        'Macintosh'=>'(Mac_PowerPC)|(Macintosh)',
        'QNX'=>'QNX',
        'BeOS'=>'BeOS',
        'OS/2'=>'OS/2',
        'Search Bot'=>'(nuhk)|(Googlebot)|(Yammybot)|(Openbot)|(Slurp/cat)|(msnbot)|(ia_archiver)'
    );
  
    foreach($oses as$os=>$pattern){
        if(eregi($pattern, $userAgent)) { // Пройдемся по массиву $oses для поиска соответствующей операционной системы.
            return $os;
        }
    }
    return 'Unknown'; // Хрен его знает, чего у него на десктопе стоит.
    }
}
?>
