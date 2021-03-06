DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Woolfy', 'dog', 'https://bingvsdevportalprodgbl.blob.core.windows.net/demo-images/c5c7398b-850b-4a7d-b0d9-ef5e10d97bc0.jpg', 4, 'Very active and adorable.', 't'),
  ('Porchetta', 'porcupine', 'http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg', 4, 'Somewhat spiky!', 't'),
  ('Snargle', 'cat', 'https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg', null, null, 't'),
  ('Charlie', 'dog', 'https://bingvsdevportalprodgbl.blob.core.windows.net/demo-images/876bb7a8-e8dd-4e36-ab3a-f0b9aba942e5.jpg', 1, 'Incredibly adorable', 't'),
  ('Dr. Claw', 'cat', null, null, null, 't'),
  ('Wolf-Dog', 'dog', 'https://vgl.ucdavis.edu/sites/g/files/dgvnsk8836/files/inline-images/Wolf-Dog-Hybrid-600px.jpg', 2, 'This dog is wild and fiendly!', 't')

