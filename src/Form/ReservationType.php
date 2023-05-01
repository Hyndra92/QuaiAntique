<?php

namespace App\Form;

use App\Entity\Horaire;
use App\Entity\Reservation;
use App\Repository\HoraireRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\DateTime;
use Symfony\Component\Validator\Constraints\PositiveOrZero;

class ReservationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('username', TextType::class, [
                'label' => 'Nom de réservation'
            ])
            ->add('numberOfSeats', IntegerType::class, [
                'label' => 'Nombre de places',
                 'constraints' => [
                     new PositiveOrZero()
                 ]
            ])
            ->add('Allergy', TextType::class, [
                'label' => 'Mentionnez vos allergies'
            ])
            ->add('hourReserv', EntityType::class, [
                'label' => 'Heure de réservation',
                'class' => Horaire::class,
                'query_builder' => function (HoraireRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->orderBy('u.id', 'ASC')
                        ->where('u.open = 1');
                },
            ])
            ->add('dateReserv', DateType::class)
            ->add('submit', SubmitType::class, [
                'label' => "Reserver",
                'attr' => [
                    'class' => 'btn btn-sm btn-success',
                ]])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Reservation::class,
        ]);
    }
}
