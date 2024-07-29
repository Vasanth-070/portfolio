import 'package:portfolio/widgets/testimonials/testimonial_card/testimonial_card_model.dart';

class TestimonialViewModel {
  final sectionTitle = 'Testimonials';
  final description = 'Nice things people have said about me:';
  final List<TestimonialCardModel> testimonials = [
    TestimonialCardModel(
        imageUrl: 'flutter.png',
        review:
            'Job well done! I am really impressed. He is very very good at what he does:) I would recommend Sagar and will rehire in the future for Frontend development.',
        name: 'John Doe',
        designation: 'Founder - xyz.com'),
    TestimonialCardModel(
        imageUrl: 'flutter.png',
        review:
            'Great guy, highly recommended for any COMPLEX front-end development job! His skills are top-notch and he will be an amazing addition to any team.',
        name: 'John Doe',
        designation: 'Founder - abx.com'),
    TestimonialCardModel(
        imageUrl: 'flutter.png',
        review:
            'Sagar was extremely easy and pleasant to work with and he truly cares about the project being a success. Sagar has a high level of knowledge and was able to work on my MERN stack application without any issues.',
        name: 'John Doe',
        designation: 'Founder - pavan.com')
  ];
}
