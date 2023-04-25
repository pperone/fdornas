// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application"

import DropdownController from "./dropdown_controller"

application.register("dropdown", DropdownController)