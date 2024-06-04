import 'package:newsbeacon/model/catagory_model.dart';

List<CategoryModel> getcategories(){
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.catagoryName="Business";
  categoryModel.image="assets/business.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.catagoryName="Entertainment";
  categoryModel.image="assets/entertainment.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.catagoryName="General";
  categoryModel.image="assets/general.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.catagoryName="Health";
  categoryModel.image="assets/health.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.catagoryName="Science";
  categoryModel.image="assets/science.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.catagoryName="Sports";
  categoryModel.image="assets/sports.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}