<?php

class Home extends CI_Controller {
	public function __construct() {
		parent::__construct();

		$this->load->model('computer_model');
		$this->load->helper('url');
	}

	public function index() {
		$targets                     = $this->input->get('targets');
		$min_price                   = $this->input->get('min_price');
		$max_price                   = $this->input->get('max_price');
		$processor_manufacturers     = $this->input->get('processor_manufacturers');
		$video_adapter_manufacturers = $this->input->get('video_adapter_manufacturers');

		if (is_string($targets)) {
			$targets = [$targets];
		}

		if (is_string($processor_manufacturers)) {
			$processor_manufacturers = [$processor_manufacturers];
		}

		if (is_string($video_adapter_manufacturers)) {
			$video_adapter_manufacturers = [$video_adapter_manufacturers];
		}

		$data['targets'] = $this->computer_model->get_targets();
		if (is_array($targets)) {
			foreach ($data['targets'] as &$item) {
				$item['checked'] = in_array($item['id'], $targets);
			}
		}

		$data['min_price'] = $min_price ? $min_price : 0;
		$data['max_price'] = $max_price ? $max_price : $this->computer_model->get_max_price();

		$data['processor_manufacturers'] = $this->computer_model->get_processor_manufacturers();
		if (is_array($processor_manufacturers)) {
			foreach ($data['processor_manufacturers'] as &$item) {
				$item['checked'] = in_array($item['id'], $processor_manufacturers);
			}
		}

		$data['video_adapter_manufacturers'] = $this->computer_model->get_video_adapter_manufacturers();
		if (is_array($video_adapter_manufacturers)) {
			foreach ($data['video_adapter_manufacturers'] as &$item) {
				$item['checked'] = in_array($item['id'], $video_adapter_manufacturers);
			}
		}

		$data['recommendations'] = $this->computer_model->get_recommendations($targets, $min_price, $max_price, $processor_manufacturers, $video_adapter_manufacturers);

		$this->load->view('home', $data);
	}
}
