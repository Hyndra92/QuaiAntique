<?php

namespace App\Controller\Admin;

use App\Entity\Parameters;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ParametersCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Parameters::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            IntegerField::new('placesOfMorning'),
            IntegerField::new('placesOfNight'),
            TextField::new('title'),
            TextEditorField::new('horaire'),
            TextEditorField::new('contentOne'),
            TextEditorField::new('contentTwo'),
        ];
    }

}
