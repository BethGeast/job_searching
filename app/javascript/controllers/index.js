// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import SortController from "./sort_controller"
application.register("sort", SortController)
eagerLoadControllersFrom("controllers", application)
