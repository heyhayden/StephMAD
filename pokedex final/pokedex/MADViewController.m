//
//  MADViewController.m
//  pokedex
//
//  Created by Technology, Arts & Meida on 11/11/13.
//  Copyright (c) 2013 steph. All rights reserved.
// project inspired by https://developer.apple.com/library/ios/referencelibrary/GettingStarted/RoadMapiOS/SecondTutorial.html#//apple_ref/doc/uid/TP40011343-CH8-SW1
// http://www.appcoda.com/use-storyboards-to-build-navigation-controller-and-table-view/s// with help from https://developer.apple.com/library/ios/referencelibrary/GettingStarted/RoadMapiOS/ThirdTutorial.html#//apple_ref/doc/uid/TP40011343-CH10-SW1
//stack overflow
//etc

#import "MADViewController.h"
#import "PokeDetailViewController.h"
#import "Pokemonobj.h"


@interface MADViewController ()

@end

@implementation MADViewController {
    NSArray *pokemons;
    
    
}

@synthesize tableView = _tableView;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Initialize table data
    //   recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    Pokemonobj *poke1 = [Pokemonobj new];
    poke1.name = @"#001 Bulbasaur";
    poke1.type = @"Grass/Poison";
    poke1.imageFile = @"bulbasaur6.jpg";
    poke1.stats = [NSArray arrayWithObjects:@"Bulbasaur is a small, quadruped Pokémon with green or bluish green skin and dark patches. Its thick legs each end with three sharp claws. Its eyes have red irises, while the sclera and pupils are white. Bulbasaur has a pair of small, pointed teeth visible when its mouth is open. It has a bulb on its back, grown from a seed planted there at birth. The bulb provides it with energy through photosynthesis as well as from the nutrient-rich seeds contained within.", nil];
    
    Pokemonobj *poke2 = [Pokemonobj new];
    poke2.name = @"#002 Ivysaur";
    poke2.type = @"Grass/Poison";
    poke2.imageFile = @"ivysaur.jpg";

    poke2.stats = [NSArray arrayWithObjects:@"Ivysaur is a dinosaur-like, quadruped Pokémon. It has blue-green skin with darker patches. Two pointed teeth protrude from its upper jaw, and it has narrow red to purple eyes. Each of its feet have three claws on them. The bulb on its back has bloomed into a large pink bud supported by a short brown trunk surrounded by leafy green fronds. The weight of this bud prevents Ivysaur from standing on its hind legs and forces its legs to grow sturdy. When its plant is ready to bloom, it gives off a distinct, strong sweet-smelling aroma and starts swelling. Ivysaur will also start spending more time in sunlight in preparation for its upcoming evolution. Exposure to sunlight adds to the strength of both Ivysaur and its plant. Ivysaur's natural habitat is plains. However, it is rare, as many are in captivity.", nil];
    
    Pokemonobj *poke3 = [Pokemonobj new];
    poke3.name = @"#003 Venusaur";
    poke3.type = @"Grass/Poison";
   poke3.imageFile = @"venusaur.jpg";
    poke3.stats = [NSArray arrayWithObjects:@"Venusaur is a squat, quadruped Pokémon with bumpy, bluish green skin. It has small, circular red eyes, two pointed teeth on its upper jaw, and four pointed teeth on its lower jaw. It has three clawed toes on each foot. The bud on its back has bloomed in a large pink, white-spotted flower. The flower is supported by a thick, brown trunk surrounded by green fronds. A female Venusaur will have a seed in the center of its flower.", nil];
    
    Pokemonobj *poke4 = [Pokemonobj new];
    poke4.name = @"#004 Charmander";
    poke4.type = @"Fire";
    poke4.imageFile = @"charmander.jpg";
    poke4.stats = [NSArray arrayWithObjects:@"Charmander is an orange, bipedal, reptilian creature. Charmander has two small fangs visible on its upper and lower jaws and blue eyes. It has a cream-colored underside and an expansive cream marking on the soles of its feet. Its arms and legs are short, and it has four fingers and three clawed toes. A flame burns on the tip of its tail, which is there even at birth. This flame can be used as an indication of Charmander's health and mood. The flame burns brightly when it is strong and weakly when it is weak. When Charmander is happy, the flame will waver; it will blaze if Charmander is enraged. It is said that Charmander dies if its flame goes out.", nil];
    
    Pokemonobj *poke5 = [Pokemonobj new];
    poke5.name = @"#005 Charmeleon";
    poke5.type = @"Fire";
    poke5.imageFile = @"charmeleon.jpg";
    poke5.stats = [NSArray arrayWithObjects:@"Charmeleon is a bipedal, reptilian creature. It has crimson scales and a cream underside. There is a horn-like protrusion on the back of its head, and it has narrow green eyes and a long snout. It has relatively long arms with three sharp claws. Its short legs have feet with three claws and cream-colored soles. The tip of its long, powerful tail has a flame burning on it. The temperature rises to unbearable levels if Charmeleon swings its tail.", nil];
    
    Pokemonobj *poke6 = [Pokemonobj new];
   poke6.name = @"#006 Charizard";
    poke6.type = @"Fire/Flying";
    poke6.imageFile = @"charizard.jpg";
    poke6.stats = [NSArray arrayWithObjects:@"Charizard is draconic, bipedal Pokémon. It is primarily orange in coloration with a cream underside from the chest to the tip of the tail. It has a long snout and neck, small blue eyes, and two horns protruding from the back of its head. There are large wings with teal undersides sprouting from its back. Its arms are short and skinny, and its hands have three clawed fingers. Its feet have three clawed toes and cream-colored soles.", nil];
    
    Pokemonobj *poke7 = [Pokemonobj new];
    poke7.name = @"#007 Squirtle";
    poke7.type = @"Water";
    poke7.imageFile = @"squirtle.jpg";
    poke7.stats = [NSArray arrayWithObjects:@"Squirtle is a small Pokémon that resembles a light blue turtle. While it typically walks on its two short legs, it has been shown to run on all fours in Super Smash Bros. Brawl. It has large brown eyes and a slightly hooked upper lip. Each of its hands and feet has three pointed digits. The end of its long tail curls inward. Its body is encased by a tough shell that forms and hardens after birth. This shell is brown on the top, pale yellow on the bottom, and has a thick white ridge between the two halves.", nil];
    
    Pokemonobj *poke8 = [Pokemonobj new];
    poke8.name = @"#008 Wartortle";
    poke8.type = @"Water";
    poke8.imageFile = @"wartortle.jpg";
    poke8.stats = [NSArray arrayWithObjects:@"To maintain balance while swimming at high speeds, Wartortle moves its furry ears and tail. It can use the fur to store air for extended underwater diving. Its tail is a popular symbol of longevity, making it popular with the elderly. It hides in water when hunting and emerges to surprise its prey. ", nil];
    
    Pokemonobj *poke9 = [Pokemonobj new];
    poke9.name = @"#009 Blastoise";
    poke9.type = @"Water";
    poke9.imageFile = @"blastoise.jpg";
    poke9.stats = [NSArray arrayWithObjects:@"The powerful cannons on this Pokémon's back are capable of producing water blasts that can pierce steel and concrete. Blastoise deliberately makes itself heavy to withstand these powerful blasts, and it will crush its opponents with its bulk. ", nil];

    
    pokemons = [NSArray arrayWithObjects:poke1, poke2, poke3, poke4, poke5, poke6, poke7, poke8, poke9, nil];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [pokemons count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"pokeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Pokemonobj *pokemon = [pokemons objectAtIndex:indexPath.row];
   cell.textLabel.text = pokemon.name;
     cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showPokeDetail" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showPokeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
      PokeDetailViewController *destViewController = segue.destinationViewController;
        destViewController.pokemon = [pokemons objectAtIndex:indexPath.row];
        
        // Hide bottom tab bar in the detail view
        //   destViewController.hidesBottomBarWhenPushed = YES;
    }
}


@end



