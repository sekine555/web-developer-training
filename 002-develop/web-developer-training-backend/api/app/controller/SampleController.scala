package controller

import play.api.mvc._

import javax.inject.{Inject, Singleton}

@Singleton
class SampleController @Inject()(val cc: ControllerComponents) extends AbstractController(cc) {
  def hello(): Action[AnyContent] = Action {
    NoContent
  }
}
