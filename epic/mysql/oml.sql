# Write and execute three insert statements for an autotrophic table in your database
INSERT INTO
   profile (profileId, profileUsername, profileActivationToken, profileEmail, profileLocation, profileHash)
VALUES
   (UNHEX('21d45f0fcb374001bf4cbb49b31e149a'), 'freelyip', '17mu014vx3isoD8r6yaLI8MrWzjdrdcQ', 'ipfreely@bart.com', 'Springfield, USA',
'qLjTl2PqELdgvn4paPLJQghKkX30KsOP0nMmaSaiMduV5PjwocP8XIUYaOZ6oa3nYCj309saADsW3DWOi2vAK8U9q9TGktS5N');

INSERT INTO
   profile (profileId, profileUsername, profileActivationToken, profileEmail, profileLocation, profileHash)
VALUES
   (UNHEX('784d3b210d9d4b35a8e2788fe64a5b7d'), 'jacquesstrap', 'ucUEHthRUuv6IT1C7sjZ9DZAlXAgI8J5', 'stapjacques@moes.com', 'Albuquerque, USA',
'5j89mHH15grzgOEBRXfo0HBmbT8dUw2Kh1kWehgzcEbwCmtG1oONvz84Co3XwnB3aINpA4M1Z9Slg0IpNMtRhCX3gL2JkasSd');

INSERT INTO
   profile (profileId, profileUsername, profileActivationToken, profileEmail, profileLocation, profileHash)
VALUES
   (UNHEX('25dc0072dfe34e429daece8cdea1a796'), 'rotchmike', 'zd9JIWnsfMgdbnTSyLsA3bPhDOuLN1DU', 'mikerotch@moes.com', 'London, UK',
'mexbjfmLqmewLFk2WuKRIOqqLjchIt62R5umPs7jwEZqlhSxz8gEkzrb1Q9APnikf3xI3g1Kem1XgJFdRYr92OLAp8gXHcC0z');


# Write and execute write an update statement on one of the rows created in the previous step
UPDATE
   profile
SET
   profileLocation = 'Tokyo, JP'
WHERE
	profileUsername = 'rotchmike';


# Write and execute a delete statement on another row created from your insert statements.
DELETE FROM
     profile
WHERE
	profileEmail = 'stapjacques@moes.com';

# Write and execute an insert statement on a table with a foreign key from the original table.
INSERT INTO
   item (itemId, itemProfileId, itemContent, itemDate)
VALUES
	(UNHEX('df3e05165830410bb98feb82ea55618c'), UNHEX('21d45f0fcb374001bf4cbb49b31e149a'), 'Monopoly', NOW());


# Write and execute a select statement for a row using its primary key as the selector.
SELECT
   itemContent
FROM
   item
WHERE
	itemProfileID = UNHEX('21d45f0fcb374001bf4cbb49b31e149a');


# Write and execute a select statement that incorporates both a where clause and an inner-join on both tables used in this assignment.
SELECT
	profileUserName, itemContent, itemDate
FROM
	item T1
		INNER JOIN
	profile T2 ON T1.itemProfileId = T2.profileId;


#Write a select statement based of off DDC-Twitter that counts the number of likes for a specific tweet.
SELECT
   COUNT(likeProfileId)
FROM
	'like'
WHERE
	likeTweetId = 'asdfasdfasdfdsgsdafsdafsdfsadf';