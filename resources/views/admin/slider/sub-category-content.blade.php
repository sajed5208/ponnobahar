<label for="inputEmail3" class="col-sm-2 control-label">Sub Category Name</label>
<div class="col-sm-10">
    <select name="sub_category_id" class="form-control">
        @foreach($subCategoriesByCategoryId as $subCategoryByCategoryId)
            <option value="{{$subCategoryByCategoryId->id}}">{{$subCategoryByCategoryId->sub_category_name}}</option>
        @endforeach
    </select>
</div>