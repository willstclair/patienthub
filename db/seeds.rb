# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Condition.destroy_all

condition_data = [
{ condition_id: 1, condition_name: 'Breast', category_id: 1},
{ condition_id: 2, condition_name: 'Lung', category_id: 1},
{ condition_id: 3, condition_name: 'Liver', category_id: 1},
{ condition_id: 4, condition_name: 'Testicular', category_id: 1},
{ condition_id: 5, condition_name: 'Prostate', category_id: 1},
{ condition_id: 6, condition_name: 'Pancreatic', category_id: 1},
{ condition_id: 7, condition_name: 'CLL (Chronic Lympocytic Leukemia)', category_id: 1},
{ condition_id: 8, condition_name: 'Non-Hodgkins Lymphoma', category_id: 1},
{ condition_id: 9, condition_name: 'Thyroid', category_id: 1},
{ condition_id: 10, condition_name: 'Tay-Sachs', category_id: 2},
{ condition_id: 11, condition_name: 'Autism Spectrum', category_id: 2},
{ condition_id: 12, condition_name: 'Down Syndrome', category_id: 2},
{ condition_id: 13, condition_name: 'Crohns Disease', category_id: 3},
{ condition_id: 14, condition_name: 'Irritable Bowel Syndrome', category_id: 3},
{ condition_id: 15, condition_name: 'Ulcerative Colitis', category_id: 3},
{ condition_id: 16, condition_name: 'Diabetes: Type I', category_id: 4},
{ condition_id: 17, condition_name: 'Diabetes: Type II', category_id: 4},
{ condition_id: 18, condition_name: 'Hypothyroidism', category_id: 4},
{ condition_id: 19, condition_name: 'Hyperthyroidism', category_id: 4},
{ condition_id: 20, condition_name: 'Hearing Loss', category_id: 5},
{ condition_id: 21, condition_name: 'Glaucoma', category_id: 5},
{ condition_id: 22, condition_name: 'Macular Degeneration', category_id: 5},
{ condition_id: 23, condition_name: 'Coronary Artery Disease', category_id: 6},
{ condition_id: 24, condition_name: 'Hypertension', category_id: 6},
{ condition_id: 25, condition_name: 'Iron Deficiency Anemia', category_id: 6},
{ condition_id: 26, condition_name: 'Raynauds Syndrome', category_id: 6},
{ condition_id: 27, condition_name: 'Congestive Heart Failure', category_id: 6},
{ condition_id: 28, condition_name: 'Cardio Myopathy', category_id: 6},
{ condition_id: 29, condition_name: 'Aplastic Anemia', category_id: 6},
{ condition_id: 30, condition_name: 'Rheumatoid Arthritis', category_id: 7},
{ condition_id: 31, condition_name: 'Lupus', category_id: 7},
{ condition_id: 32, condition_name: 'HIV', category_id: 7},
{ condition_id: 33, condition_name: 'Lyme Disease', category_id: 7},
{ condition_id: 34, condition_name: 'AIDS', category_id: 7},
{ condition_id: 35, condition_name: 'Polycystic Kidney Disease', category_id: 8},
{ condition_id: 36, condition_name: 'Chronic Kidney Disease', category_id: 8},
{ condition_id: 37, condition_name: 'Interstitial Cystitis', category_id: 8},
{ condition_id: 38, condition_name: 'Hepaptitis C', category_id: 9},
{ condition_id: 39, condition_name: 'Pancreatitis', category_id: 9},
{ condition_id: 40, condition_name: 'Polycystic Liver Disease', category_id: 9},
{ condition_id: 41, condition_name: 'Pulmonary Fibrosis', category_id: 10},
{ condition_id: 42, condition_name: 'Asthma', category_id: 10},
{ condition_id: 43, condition_name: 'COPD', category_id: 10},
{ condition_id: 44, condition_name: 'Cystic Fibrosis', category_id: 10},
{ condition_id: 45, condition_name: 'Emphysema', category_id: 10},
{ condition_id: 46, condition_name: 'Pulmonary Hypertension', category_id: 10},
{ condition_id: 47, condition_name: 'Infertility', category_id: 11},
{ condition_id: 48, condition_name: 'Erectile Dysfunction', category_id: 11},
{ condition_id: 49, condition_name: 'Benign Prostatic Hypertrophy', category_id: 11},
{ condition_id: 50, condition_name: 'Depression', category_id: 12},
{ condition_id: 51, condition_name: 'Bipolar I', category_id: 12},
{ condition_id: 52, condition_name: 'Bipolar II', category_id: 12},
{ condition_id: 53, condition_name: 'Social Anxiety', category_id: 12},
{ condition_id: 54, condition_name: 'ADHD/ADD', category_id: 12},
{ condition_id: 55, condition_name: 'Dysthymia', category_id: 12},
{ condition_id: 56, condition_name: 'Generalized Anxiety Disorder', category_id: 12},
{ condition_id: 57, condition_name: 'Panic Disorder', category_id: 12},
{ condition_id: 58, condition_name: 'Eating Disorder', category_id: 12},
{ condition_id: 59, condition_name: 'OCD', category_id: 12},
{ condition_id: 60, condition_name: 'Phobia', category_id: 12},
{ condition_id: 61, condition_name: 'PTSD', category_id: 12},
{ condition_id: 62, condition_name: 'Schizophrenia', category_id: 12},
{ condition_id: 63, condition_name: 'Drug Addiction', category_id: 12},
{ condition_id: 64, condition_name: 'Tobacco Addiction', category_id: 12},
{ condition_id: 65, condition_name: 'Alcohol Addiction', category_id: 12},
{ condition_id: 66, condition_name: 'Hypercholesterolemia', category_id: 13},
{ condition_id: 67, condition_name: 'Hemochromatosis', category_id: 13},
{ condition_id: 68, condition_name: 'Obesity', category_id: 13},
{ condition_id: 69, condition_name: 'Fibromyalgia', category_id: 14},
{ condition_id: 70, condition_name: 'OA', category_id: 14},
{ condition_id: 71, condition_name: 'Osteoporosis', category_id: 14},
{ condition_id: 72, condition_name: 'TMJ', category_id: 14},
{ condition_id: 73, condition_name: 'Muscular Dystrophy', category_id: 14},
{ condition_id: 74, condition_name: 'ALS', category_id: 15},
{ condition_id: 75, condition_name: 'MS', category_id: 15},
{ condition_id: 76, condition_name: 'Epilepsy', category_id: 15},
{ condition_id: 77, condition_name: 'RLS', category_id: 15},
{ condition_id: 78, condition_name: 'CFS', category_id: 15},
{ condition_id: 79, condition_name: 'MSA', category_id: 15},
{ condition_id: 80, condition_name: 'NMO', category_id: 15},
{ condition_id: 81, condition_name: 'PLS', category_id: 15},
{ condition_id: 82, condition_name: 'PSP', category_id: 15},
{ condition_id: 83, condition_name: 'CBD', category_id: 15},
{ condition_id: 84, condition_name: 'Stroke', category_id: 15},
{ condition_id: 85, condition_name: 'Migraine', category_id: 15},
{ condition_id: 86, condition_name: 'Psoriasis', category_id: 16},
{ condition_id: 87, condition_name: 'Eczema', category_id: 16},
{ condition_id: 88, condition_name: 'Rosacea', category_id: 16},
{ condition_id: 89, condition_name: 'Heart Transplant', category_id: 17},
{ condition_id: 90, condition_name: 'Kidney Transplant', category_id: 17},
{ condition_id: 91, condition_name: 'Liver Transplant', category_id: 17},
{ condition_id: 92, condition_name: 'Lung Transplant', category_id: 17},
{ condition_id: 93, condition_name: 'Pancreas Transplant', category_id: 17},
{ condition_id: 94, condition_name: 'Infertility', category_id: 18},
{ condition_id: 95, condition_name: 'Endometriosis', category_id: 18},
{ condition_id: 96, condition_name: 'Menopause', category_id: 18},
{ condition_id: 97, condition_name: 'PCOS', category_id: 18},
{ condition_id: 98, condition_name: 'Postpartum Depression', category_id: 18}]

condition_data.each do |condition_info|
  m = Condition.new
  m.condition_name = condition_info[:condition_name]
  m.condition_id = condition_info[:condition_id]
  m.category_id = condition_info[:category_id]
  m.save
end

puts "There are now #{Condition.count} movies in the database"

# Category.destroy_all

category_data = [
{ category_id: 1, category_name: 'Cancer'},
{ category_id: 2, category_name: 'Developmental and Chromosomal'},
{ category_id: 3, category_name: 'Digestive and Intestinal '},
{ category_id: 4, category_name: 'Endocrine'},
{ category_id: 5, category_name: 'Eye, Ear, Nose and Throat'},
{ category_id: 6, category_name: 'Heart, Blood and Circulatory'},
{ category_id: 7, category_name: 'Immune, Inflamatory and Infections'},
{ category_id: 8, category_name: 'Kidneys and Urinary'},
{ category_id: 9, category_name: 'Liver, Pancreas, and Gallbladder'},
{ category_id: 10, category_name: 'Lungs and Respiratory'},
{ category_id: 11, category_name: 'Mens Health'},
{ category_id: 12, category_name: 'Mental Health and Behavior'},
{ category_id: 13, category_name: 'Metabolism and Nutrition'},
{ category_id: 14, category_name: 'Muscle, Bone and Joint'},
{ category_id: 15, category_name: 'Neurological and Brain'},
{ category_id: 16, category_name: 'Skin, Hair and Nails'},
{ category_id: 17, category_name: 'Transplants'},
{ category_id: 18, category_name: 'Womens Health and Pregnancy'}
]

category_data.each do |category_info|
  m = Category.new
  m.category_name = condition_info[:category_name]
  m.category_id = condition_info[:category_id]
  m.save
end

puts "There are now #{Category.count} movies in the database"

# User.destroy_all

user_data = [
{ user_id: 1, user_name: 'willstclair', first_name: 'Will', last_name: 'StClair', user_type: 'Expert', zip_code: 60201, disease_id: 14, treatments_advised: 'Diet restriction', comments: 'Successfully managing my condition and thriving!'},
{ user_id: 2, user_name: 'kristycharbonneau', first_name: 'Kristy', last_name: 'Charbonneau', user_type: 'Expert', zip_code: 60201, disease_id: 48, treatments_advised: 'Viagra', comments: 'My wife is now feeling a little poke coming through.'},
]

user_data.each do |user_info|
  t = User.new
  t.user_id = user_info[:user_id]
  t.user_name = user_info[:user_name]
  t.first_name = user_info[:user_name]
  t.last_name = user_info[:user_name]
  t.user_type = user_info[:user_name]
  t.zip_code = user_info[:user_name]
  t.disease_id = user_info[:user_name]
  t.treatments_advised = user_info[:treatments_advised]
  t.comments = user_info[:comments]
  t.save
end
puts "There are now #{User.count} users in the database"
