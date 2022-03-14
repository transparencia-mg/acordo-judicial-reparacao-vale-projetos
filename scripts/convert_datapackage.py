from frictionless import Package

def datapacage_to_json():
  dp = Package('./datapackage.yaml')
  dp.to_json('datapackage.json')

if __name__ == '__main__':
  datapacage_to_json()
