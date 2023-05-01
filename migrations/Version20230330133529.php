<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230330133529 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE menus (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, price VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE menus_plats (menus_id INT NOT NULL, plats_id INT NOT NULL, INDEX IDX_D42885A614041B84 (menus_id), INDEX IDX_D42885A6AA14E1C8 (plats_id), PRIMARY KEY(menus_id, plats_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE menuprincipale (menus_id INT NOT NULL, plats_id INT NOT NULL, INDEX IDX_479F948314041B84 (menus_id), INDEX IDX_479F9483AA14E1C8 (plats_id), PRIMARY KEY(menus_id, plats_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE menudesserts (menus_id INT NOT NULL, plats_id INT NOT NULL, INDEX IDX_FE882CA214041B84 (menus_id), INDEX IDX_FE882CA2AA14E1C8 (plats_id), PRIMARY KEY(menus_id, plats_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE menus_plats ADD CONSTRAINT FK_D42885A614041B84 FOREIGN KEY (menus_id) REFERENCES menus (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE menus_plats ADD CONSTRAINT FK_D42885A6AA14E1C8 FOREIGN KEY (plats_id) REFERENCES plats (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE menuprincipale ADD CONSTRAINT FK_479F948314041B84 FOREIGN KEY (menus_id) REFERENCES menus (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE menuprincipale ADD CONSTRAINT FK_479F9483AA14E1C8 FOREIGN KEY (plats_id) REFERENCES plats (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE menudesserts ADD CONSTRAINT FK_FE882CA214041B84 FOREIGN KEY (menus_id) REFERENCES menus (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE menudesserts ADD CONSTRAINT FK_FE882CA2AA14E1C8 FOREIGN KEY (plats_id) REFERENCES plats (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE menus_plats DROP FOREIGN KEY FK_D42885A614041B84');
        $this->addSql('ALTER TABLE menus_plats DROP FOREIGN KEY FK_D42885A6AA14E1C8');
        $this->addSql('ALTER TABLE menuprincipale DROP FOREIGN KEY FK_479F948314041B84');
        $this->addSql('ALTER TABLE menuprincipale DROP FOREIGN KEY FK_479F9483AA14E1C8');
        $this->addSql('ALTER TABLE menudesserts DROP FOREIGN KEY FK_FE882CA214041B84');
        $this->addSql('ALTER TABLE menudesserts DROP FOREIGN KEY FK_FE882CA2AA14E1C8');
        $this->addSql('DROP TABLE menus');
        $this->addSql('DROP TABLE menus_plats');
        $this->addSql('DROP TABLE menuprincipale');
        $this->addSql('DROP TABLE menudesserts');
    }
}
