class NGO_Profile{
  // id, name, co_name, co_phone, phone, email, type, link, address, bio, logo, images

  final int id;
  final String name;
  final String coordinator_name;
  final String coordinator_phone;
  final String phone;
  final String email;
  final String type;
  final String link;
  final String address;
  final String bio;
  final String logo_link;
  final String images_link;

  const NGO_Profile({
    required this.id,
    required this.name,
    required this.coordinator_name,
    required this.coordinator_phone,
    required this.phone,
    required this.email,
    required this.type,
    required this.link,
    required this.address,
    required this.bio,
    required this.logo_link,
    required this.images_link
  });
}