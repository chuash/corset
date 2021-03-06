# file corset/R/corset.naive.R
# Copyright (C) 2016 Merck Sharp & Dohme Corp. a subsidiary of Merck & Co.
# , Inc., Kenilworth, NJ, USA.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

corset.naive <- function(x, min, max, ...){
  ## corset.naive replaces values outside boundaries by the boundary values.

  lx <- length(x)
  wnna <- which(!is.na(x))
  x <- x[wnna]

  x[which(x < min)] <- min[which(x < min)]
  x[which(x > max)] <- max[which(x > max)]

  x.out <- rep(NA,lx)
  x.out[wnna] <- x
  x.out
}