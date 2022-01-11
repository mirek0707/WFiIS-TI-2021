<?php

class log extends controller {

    protected $layout;
    protected $model;

    function __construct() {
        parent::__construct();
        $this->layout = new view('main');
        $this->layout->css = $this->css;
        $this->model = new user;
        $this->layout->menu = $this->menu;
    }
    
    function rejestrujView() {
        $this->layout->header = 'Rejestracja';
        $this->view = new view('rejestracja');
        $this->layout->content = $this->view;
        return $this->layout;
    }

    function rejestruj() {
      $reg = new user;
      $data = $_POST['data'];
      $obj = json_decode($data);
      if (isset($obj->fname) and isset($obj->lname) and isset($obj->email) and isset($obj->pass)) {
          $response = $this->model->_save($obj);
      }
      return ($response ? "Zarejestrowales sie" : "Wystapil blad");
    }

    function loginView() {
        $this->layout->header = 'Logowanie';
        $this->view = new view('login');
        $this->layout->content = $this->view;
        return $this->layout;
    }

    function login() {
        $reg = new user;
        $data = $_POST['data'];
        $obj = json_decode($data);
        if (isset($obj->email) and isset($obj->pass)) {
            $response = $this->model->_login($obj);
        }
        return ($response ? "Zalogowales sie" : "Wystapil blad");
    }

}

?>