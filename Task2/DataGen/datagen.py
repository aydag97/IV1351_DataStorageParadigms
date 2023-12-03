
from faker import Faker

fake = Faker('sv_SE')

def generate_fake_data(num_records):
    data = []
    for _ in range(num_records):
        first_name = fake.first_name()
        last_name = fake.last_name()
        email = f"{first_name.lower()}.{last_name.lower()}@example.com"

        person_number = fake.ssn(min_age = 40, max_age = 80)
        first = first_name
        last = last_name
        mail = email
        phone_number = fake.phone_number()
        street = fake.street_address()
        zip = fake.postcode()
        city = fake.city()
        
        data.append((person_number, first, last, mail, phone_number, street, zip, city))
    return data

def save_to_txt(data, file_path):
    with open(file_path, 'w') as file:
        for record in data:
            file.write(f"{record},\n")

if __name__ == "__main__":
    num_records = 80
    fake_data = generate_fake_data(num_records)

    file_path = 'contact_data.txt'  
    save_to_txt(fake_data, file_path)
