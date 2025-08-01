variable "example_variable" {
  type = string


  default = "example"

}
variable "filename1" {
  default = "abc1.txt"
}


variable "filename2" {
  default = "abc1.txt"
  type    = string
}

variable "filename3" {
  default = true
  type    = bool
}
variable "filename4" {
  default = 54
  type    = number
}

variable "content" {
  default = 45
  type    = any
}



variable "filename5" {
  type    = list(any)
  default = ["animal", 120, true, "test", 123]
}

variable "filename6" {
  type    = list(number)
  default = [1, 2, 3, 4, 5, 2, 4, 7, 1, 2]
}

variable "filename7" {
  type = map(string)

  default = {
    name     = "raksha"
    id       = "560"
    isactive = "no"
  }
}

variable "filename8" {
  type = map(number)
  default = {
    id    = 12345
    phone = 43154431
  }
}




variable "filename9" {
  type    = tuple([string, number, bool, list(number)])
  default = ["raksha", 230, true, [1, 2, 3]]
}

