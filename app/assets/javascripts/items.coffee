# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	# Make the table sortable
	table = $(".sorting-table").stupidtable();

	# Listen for an event after the table is sorted
	table.bind 'aftertablesort', (event, data) ->

		# data.column - the index of the column sorted after a click
	    # data.direction - the sorting direction (either asc or desc)
	    # $(this) - this table object

		# Get all table columns
		cols = $(this).find("THEAD [data-sort]")

		# Remove the sorting classes
		cols.find("SPAN").removeClass()

		dir = if data.direction == "asc" then "up" else "down"
		cols.eq(data.column).find("SPAN").addClass("glyphicon glyphicon-arrow-" + dir)


# Run the ready function on the ready events
$(document).ready(ready);
$(document).on('page:load', ready);
