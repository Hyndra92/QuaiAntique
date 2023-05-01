<?php

namespace App\Entity;

use App\Repository\ParametersRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ParametersRepository::class)]
class Parameters
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $placesOfMorning = null;

    #[ORM\Column]
    private ?int $placesOfNight = null;

    #[ORM\Column(length: 255)]
    private ?string $title = null;

    #[ORM\Column(length: 255)]
    private ?string $horaire = null;

    #[ORM\Column(length: 5000)]
    private ?string $contentOne = null;

    #[ORM\Column(length: 5000)]
    private ?string $contentTwo = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPlacesOfMorning(): ?int
    {
        return $this->placesOfMorning;
    }

    public function setPlacesOfMorning(int $placesOfMorning): self
    {
        $this->placesOfMorning = $placesOfMorning;

        return $this;
    }

    public function getPlacesOfNight(): ?int
    {
        return $this->placesOfNight;
    }

    public function setPlacesOfNight(int $placesOfNight): self
    {
        $this->placesOfNight = $placesOfNight;

        return $this;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getHoraire(): ?string
    {
        return $this->horaire;
    }

    public function setHoraire(string $horaire): self
    {
        $this->horaire = $horaire;

        return $this;
    }

    public function getContentOne(): ?string
    {
        return $this->contentOne;
    }

    public function setContentOne(string $contentOne): self
    {
        $this->contentOne = $contentOne;

        return $this;
    }

    public function getContentTwo(): ?string
    {
        return $this->contentTwo;
    }

    public function setContentTwo(string $contentTwo): self
    {
        $this->contentTwo = $contentTwo;

        return $this;
    }
}
