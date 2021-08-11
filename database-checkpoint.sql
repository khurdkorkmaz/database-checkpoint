CREATE TABLE destinations (
    id serial,
    name text,
    average_temp integer,
    cost_of_flight integer,
    has_beach boolean,
    has_mountains boolean
);

INSERT INTO destinations (name, average_temp, cost_of_flight, has_beach, has_mountains) VALUES ('Thailand', 82, 765, TRUE, TRUE);
INSERT INTO destinations (name, average_temp, cost_of_flight, has_beach, has_mountains) VALUES ('Minnesota', 41, 235, FALSE, FALSE);
INSERT INTO destinations (name, average_temp, cost_of_flight, has_beach, has_mountains) VALUES ('New Zealand', 66, 433, TRUE, TRUE);
INSERT INTO destinations (name, average_temp, cost_of_flight, has_beach, has_mountains) VALUES ('England', 45, 290, FALSE, FALSE);
INSERT INTO destinations (name, average_temp, cost_of_flight, has_beach, has_mountains) VALUES ('Tristan da Cunha', 59, 1304, TRUE, TRUE);

CREATE TABLE airlines (
    id serial,
    name text,
    destinations_flown_to text[];
);

INSERT INTO airlines (name, destinations_flown_to) VALUES ('Spirit', ARRAY['New Zealand', 'Scotland']);
INSERT INTO airlines (name, destinations_flown_to) VALUES ('Lufthansa', ARRAY['Tristan da Cunha', 'Scotland', 'Thailand']);
INSERT INTO airlines (name, destinations_flown_to) VALUES ('Delta', ARRAY['Thailand', 'Minnesota', 'England', 'Scotland']);
INSERT INTO airlines (name, destinations_flown_to) VALUES ('Southwest', ARRAY['New Zealand', 'Tristan de Cunha', 'Minnesota']);




