import { Router } from "itty-router";
import * as forms from "../controller/forms";

export const routerForms = Router({ base: "/api/forms" })
	.get('/form', forms.List)
	.post('/form', forms.Create);