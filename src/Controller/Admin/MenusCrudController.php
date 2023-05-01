<?php

namespace App\Controller\Admin;

use App\Entity\Menus;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class MenusCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Menus::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name'),
            TextField::new('description'),
            IntegerField::new('Price'),
            AssociationField::new('entrees')
            ->setFormTypeOptions([
                'multiple' => true,
            ]),
            AssociationField::new('principale')
            ->setFormTypeOptions([
                'multiple' => true,
            ]),
            AssociationField::new('desserts')
            ->setFormTypeOptions([
                'multiple' => true,
            ])
        ];
    }

}
