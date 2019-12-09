<?php

class Computer_model extends CI_Model {
	public function __construct() {
		parent::__construct();

		$this->load->database();
	}

	public function get_targets() {
		return $this->db->get('target')->result_array();
	}

	public function get_max_price() {
		$this->db->order_by('max_price', 'DESC');
		$this->db->limit('1');
		$res = $this->db->get('computer')->row_array();
		return $res['max_price'];
	}

	public function get_processor_manufacturers() {
		return $this->db->get('processor_manufacturer')->result_array();
	}

	public function get_video_adapter_manufacturers() {
		return $this->db->get('video_adapter_manufacturer')->result_array();
	}

	public function get_recommendations($targets, $min_price, $max_price, $processor_manufacturers, $video_adapter_manufacturers) {
		$this->db->distinct();
		$this->db->select('c.*');
		$this->db->join('computer_target ct', 'c.id = ct.computer_id', 'inner');

		if (is_array($targets) && !empty($targets)) {
			$this->db->where_in('ct.target_id', $targets);
		}

		if (isset($min_price)) {
			$this->db->where('c.min_price >=', $min_price);
		}

		if (isset($max_price)) {
			$this->db->where('c.max_price <=', $max_price);
		}

		if (is_array($processor_manufacturers) && !empty($processor_manufacturers)) {
			$this->db->where_in('c.processor_manufacturer', $processor_manufacturers);
		}

		if (is_array($video_adapter_manufacturers) && !empty($video_adapter_manufacturers)) {
			$this->db->where_in('c.video_adapter_manufacturer', $video_adapter_manufacturers);
		}

		return $this->db->get('computer c')->result_array();
	}
}
