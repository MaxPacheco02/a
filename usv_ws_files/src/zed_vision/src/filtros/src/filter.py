import time

class Filter:
	def __init__(self, func, img):
		self.func = func
		self.img = img

	def get_output_img(self):
		return self.img

	def run(self, box):
		crop_img_raw = self.img[box.ymin:box.ymax, box.xmin:box.xmax]
		crop_img_filtered = self.func(crop_img_raw)
		self.img[box.ymin:box.ymax, box.xmin:box.xmax] = crop_img_filtered