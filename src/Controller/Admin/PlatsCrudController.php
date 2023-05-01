<?php

namespace App\Controller\Admin;

use App\Entity\Plats;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use phpDocumentor\Reflection\Types\Integer;

class PlatsCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Plats::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name'),
            TextField::new('description'),
            IntegerField::new('Price'),
            ChoiceField::new('type')
            ->setChoices([
                'Entrée' => 'Entrée',
                'Plat principal' => 'Plat principal',
                'Dessert' => 'Dessert',
                'Sodas' => 'Soda',
                'Vins' => 'Vin',
                'Eau' => 'Eau',
            ])
        ];
    }

}
