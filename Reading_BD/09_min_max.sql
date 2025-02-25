SELECT MAX(age) FROM users; /* me trae la edad maxima de la tabla usuario */
SELECT MIN(age) FROM users; /* me trae la edad minima de la tabla usuario */
SELECT MAX(age) FROM users WHERE email IS NOT NULL; /* me trae la edad maxima de la tabla usuario donde el email no sea nulo */
SELECT MIN(age) FROM users WHERE email IS NOT NULL; /* me trae la edad minima de la tabla usuario donde el email no sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL; /* me trae la edad maxima de la tabla usuario donde el email sea nulo */
SELECT MIN(age) FROM users WHERE email IS NULL; /* me trae la edad minima de la tabla usuario donde el email sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL OR name IS NULL; /* me trae la edad maxima de la tabla usuario donde el email sea nulo o el nombre sea nulo */
SELECT MIN(age) FROM users WHERE email IS NULL OR name IS NULL; /* me trae la edad minima de la tabla usuario donde el email sea nulo o el nombre sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL AND name IS NULL; /* me trae la edad maxima de la tabla usuario donde el email sea nulo y el nombre sea nulo */
SELECT MIN(age) FROM users WHERE email IS NULL AND name IS NULL; /* me trae la edad minima de la tabla usuario donde el email sea nulo y el nombre sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL OR name IS NULL OR surname IS NULL; /* me trae la edad maxima de la tabla usuario donde el email sea nulo o el nombre sea nulo o el apellido sea nulo */
SELECT MIN(age) FROM users WHERE email IS NULL OR name IS NULL OR surname IS NULL; /* me trae la edad minima de la tabla usuario donde el email sea nulo o el nombre sea nulo o el apellido sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL AND name IS NULL AND surname IS NULL; /* me trae la edad maxima de la tabla usuario donde el email sea nulo y el nombre sea nulo y el apellido sea nulo */
SELECT MIN(age) FROM users WHERE email IS NULL AND name IS NULL AND surname IS NULL; /* me trae la edad minima de la tabla usuario donde el email sea nulo y el nombre sea nulo y el apellido sea nulo */
SELECT MAX(age) FROM users WHERE email IS NULL OR name IS NULL OR surname IS NULL OR age > 30; /* me trae la edad maxima de la tabla usuario donde el email sea nulo o el nombre sea nulo o el apellido sea nulo o la edad sea mayor que 30 */
SELECT MIN(age) FROM users WHERE email IS NULL OR name IS NULL OR surname IS NULL OR age > 30; /* me trae la edad minima de la tabla usuario donde el email sea nulo o el nombre sea nulo o el apellido sea nulo o la edad sea mayor que 30 */
SELECT MAX(age) FROM users WHERE email IS NULL AND name IS NULL AND surname IS NULL AND age > 30; /* me trae la edad maxima de la tabla usuario donde el email sea nulo y el nombre sea nulo y el apellido sea nulo y la edad sea mayor que 30 */
SELECT MIN(age) FROM users WHERE email IS NULL AND name IS NULL AND surname IS NULL AND age > 30; /* me trae la edad minima de la tabla usuario donde el email sea nulo y el nombre sea nulo y el apellido sea nulo y la edad sea mayor que 30 */