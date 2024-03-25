-- Active: 1711142118645@@35.87.147.206@3306@gracious_vampire_625ac0_db
CREATE TABLE IF NOT EXISTS accounts (
    id VARCHAR(255) NOT NULL primary key COMMENT 'primary key', createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created', updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update', name varchar(255) COMMENT 'User Name', email varchar(255) COMMENT 'User Email', picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE bosses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50) NOT NULL, wildTarget BOOLEAN NOT NULL, weakToSticky BOOLEAN, howDifficultToWorkAround VARCHAR(200), shouldAvoidRage VARCHAR(200) NOT NULL
)

SELECT * from bosses

DROP TABLE bosses

INSERT INTO
    bosses (
        name, wildTarget, weakToSticky, shouldAvoidRage, howDifficultToWorkAround
    )
VALUES (
        "Butcher", False, TRUE, "Yes; he will chase down any Hunters in his lair.", "Not particularly, as he is rather slow; but his fire can cause fights with other Hunters to be difficult if you're suddenly missing health bars."
    )

INSERT INTO
    bosses (
        name, wildTarget, weakToSticky, shouldAvoidRage, howDifficultToWorkAround
    )
VALUES (
        "Spider", FALSE, TRUE, "Yes; the spider will quickly run after any Hunters and swiftly poison and damage them.", "Not terribly, the spider will leave hunters alone unless provoked or raging."
    )

INSERT INTO
    bosses (
        name, wildTarget, weakToSticky, shouldAvoidRage, howDifficultToWorkAround
    )
VALUES (
        "Assassin", FALSE, FALSE, "Instead of attacking outright, the Assassin will spawn clones that track down Hunters and explode. the slightest bit of damage will destroy them, however.", "He is often very difficult; as he will relentlessly attack Hunters in his lair."
    )

INSERT INTO
    bosses (
        name, wildTarget, weakToSticky, shouldAvoidRage, howDifficultToWorkAround
    )
VALUES (
        "ScrapBeak", FALSE, TRUE, "Yes, Scrapbeak will quickly attack any players with a charge.", "Yes, he will roam his lair and never stop attacking a hunter once he spots one."
    )

INSERT INTO
    bosses (
        name, wildTarget, weakToSticky, shouldAvoidRage, howDifficultToWorkAround
    )
VALUES (
        "RotJaw", TRUE, FALSE, "As a wild target, she only enters a rage once and is then always in it.", "Rotjaw won't ever leave the water; so as long as none of your friends are down in it, she won't attack anyone."
    )