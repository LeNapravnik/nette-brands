<?php

declare(strict_types=1);

namespace App\Module\Presenters;

use App\Model\BrandManager;
use App\Module\Presenters\BasePresenter;
use Nette\Application\UI\Form;
use Nette\Utils\ArrayHash;

/**
 * Presenter for brands
 */
class BrandPresenter extends BasePresenter {
  
  /** @var BrandManager for work with brand model */
  private $brandManager;
	
  /**
	 * @param BrandManager $brandManager for work with brand model
	 */
	public function __construct(BrandManager $brandManager) {
	  $this->brandManager = $brandManager;
	}

  /**
     * Renders default page with list of brands
     * @param int $page page default 1
     * @param int $pagination pagination default 10 items per page
     * @param int $order ordering items default ascending
  */
  public function renderDefault(int $page = 1, int $pagination = 10, string $order = "asc"): void {
    $lastPage = 0;
    $this->template->data = [];

    $brands = $this->brandManager->getAllBrands();
    if($order == "desc"){
      $brands = $this->brandManager->getBrandsOrderedByNameDescending();
    }
    $this->template->brands = $brands->page($page, $pagination, $lastPage);
    $this->template->page = $page;
    $this->template->pagination = $pagination;
    $this->template->lastPage = $lastPage;
    $this->template->order = $order;
  }

  /**
   * if the form for adding brand was successfully submited, calls function to save new brand
  */
  public function actionAdd(): void {
		$this["brandForm"]->onSuccess[] = [ $this, "saveNewBrand" ];
  }

  /**
     * sets view for editing brand - gets data of given brand
     * if the form for updating brand was successfully submited, calls function to update brand
     * @param int $id id of brand to edit
  */
  public function actionEdit(int $id): void {
    if($this->action == 'edit'){
      $this->setView('add');

      $this["brandForm"]->onSuccess[] = [ $this, "editBrand" ];

      $brand = $this->brandManager->getBrand($id);
      $this["brandForm"]->setDefaults($brand);

		  $this->template->edit = true;
      $this->template->target = $id;
    }
  }

  /**
     * if clicked on "Smazat" by the brand, calls function to set brand "deleted" to 1, so it
     * will not be listed in brand list, but the brands entry in database is not removed
     * @param int $id id of brand to delete
  */
  public function handleDelete(int $id): void {
    $this->brandManager->setDeleted($id);
    $this->flashMessage( "Značka byla smazána", "success" );
    $this->redirect( "default" );
  }

  /**
     * renders form for adding and editing a brand
     * @return Form form for adding and editing a brand
  */
  public function createComponentBrandForm(): Form {
    $form = new Form();

    $form->addHidden('id');
    $form->addText('name', 'Název značky:')
          ->addRule($form::MaxLength, 'Název je příliš dlouhý', 100)
          ->setRequired("Název je povinný");
    $form->addText('country', 'Země:')
          ->addRule($form::MaxLength, 'Název země je příliš dlouhý', 100);
    $form->addText('description', 'Popis značky:');

    $form->addSubmit( "submit", "Uložit" );

    return $form;
  }

  /**
     * saves new brand to database and redirects to page with list of brands
     * @param Form
     * @param array|ArrayHash $data brand data
  */
  public function saveNewBrand($form, ArrayHash $data): void {
    $this->brandManager->saveBrand($data);

    $this->flashMessage("Značka byla uložena", "success");
    $this->redirect("default");
  }

  /**
     * updates brand, saves changes to database
     * @param Form
     * @param array|ArrayHash $data brand data
  */
  public function editBrand($form, ArrayHash $data): void {
    $this->brandManager->updateBrand($data);
    $this->flashMessage( "Změny byly uloženy", "success" );
    $this->redirect("this");
  }

}
