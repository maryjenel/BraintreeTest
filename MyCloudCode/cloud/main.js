
// Use Parse.Cloud.define to define as many cloud functions as you want.
// For example:
Parse.Cloud.define("payments", function(request, response) {
	var query = new Parse.Query("Payments");
	query.equalTo("name", request.params.name)
	query.find({
		success: function(results)
		{
			var sum = 0;
			for (var i = 0 i< results.length, ++i) {
				sum += results[i].get("price");
			}
			response.success(results.length);
		},
		error: function(){
			response.error("movie lookup failed")
		}
	});
});
