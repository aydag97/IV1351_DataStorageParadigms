
from faker import Faker

fake = Faker('sv_SE')

def generate_fake_data(num_records):
    data = []
    for _ in range(num_records):
        first_name = fake.first_name()
        last_name = fake.last_name()
        email = f"{first_name.lower()}.{last_name.lower()}@example.com"
        
        record = {
            "personal_number": fake.ssn(),
            "first_name": first_name,
            "last_name": last_name,
            "email": email,
            "phone_number": fake.phone_number(),
            "street_address": fake.street_address(),
            "zip_code": fake.postcode(),
            "city": fake.city()
        }
        data.append(record)
    return data

def save_to_txt(data, file_path):
    with open(file_path, 'w') as file:
        for record in data:
            file.write(" ".join(f"{key}: {value}\n" for key, value in record.items()))
            file.write("\n")  

if __name__ == "__main__":
    num_records = 20  
    fake_data = generate_fake_data(num_records)

    file_path = 'generated_data.txt'  
    save_to_txt(fake_data, file_path)
