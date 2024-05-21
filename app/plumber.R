#
# plumber.js
# main end points
#
# VDJServer Plumber
# https://vdjserver.org
#
# Copyright (C) 2023 The University of Texas Southwestern Medical Center
#
# Author: Scott Christley <scott.christley@utsouthwestern.edu>
# Date: Nov 1, 2023
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https:#www.gnu.org/licenses/>.
#

source('/vdjserver-plumber/vdjserver-tapis/scripts/mutational_hedgehog.R')

#* @get /plumber/v1/mutational_hedgehog
mutational_hedgehog <- function(uuid){
    mutationalHedgehog(uuid)
    uuid
}

#* @get /plumber/v1/cache
fileList <- function(){
    list.files('/image_cache')
}

#* @get /plumber/v1/mean
normalMean <- function(samples=10){
    data <- rnorm(samples)
    mean(data)
}

#* @post /plumber/v1/sum
addTwo <- function(a, b){
  as.numeric(a) + as.numeric(b)
}

#* Example of customizing graphical output
#* @serializer png list(width = 400, height = 500)
#* @get /plumber/v1/plot
function(){
  plot(1:10)
}
