/* indice acelera la busqueda 
en caso de que haya muchos datos, se puede acelerar la busqueda con indices
pero la tabla va a pesar mas

*/

CREATE INDEX idx_company_id ON users (company_id);
CREATE INDEX idx_company_id ON companies (company_id);
CREATE INDEX idx_user_id ON users (user_id);
CREATE INDEX idx_cedula_id ON cedula (cedula_id);
CREATE INDEX idx_user_id ON users_languages (user_id);
CREATE INDEX idx_language_id ON users_languages (language_id);