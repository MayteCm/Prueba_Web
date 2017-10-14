-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 10:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE `noticias` (
  `id` int(2) NOT NULL,
  `titulo` varchar(75) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `texto` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `autor`, `fecha`, `texto`, `imagen`) VALUES
(7, 'Volvo', 'by AutoExpress', '2017-09-12', 'Volvo will expand its range to include a smaller Audi A1 rival, offering buyers supermini dimensions with high-end features\r\n\r\nVolvo bosses have admitted they are looking at expanding the current product range by introducing a sub-V40 model designed to rival premium superminis such as the Audi A1 and MINI.\r\n\r\nSpeaking to Auto Express, recently appointed R&D chief Henrik Green, hinted at the feasibility of a smaller V20 hatchback and XC20 SUV models. The cars would be aimed at people who want all the high-end features found in the brand’s larger cars, but in a city-friendly package.\r\n\r\n• Best superminis on sale right now\r\n\r\n“There is a lot of push to have smaller-sized vehicles, more convenience,” Green told us. “These people who want these small cars, they may want the same kind of technology in the car, the same level of active safety support, the same level of connectivity, the same level of premium feeling in all the surface materials.”\r\n\r\nWhen quizzed about whether Volvo was ready for such a shift, Green assured us that the forthcoming CMA platform (used to underpin the upcoming XC40 SUV) could be shortened to accommodate an Audi A1-sized supermini.\r\n\r\n“CMA can be made a bit smaller and the length is not really a problem,” Green added. “It’s more about how much space and legroom you want to have in the rear; that’s the compromise.\r\n\r\n“If you want to go one size down you can take it most from the length. You can work with the shape of the car.”\r\n\r\nGreen suggested that the historic correlation between the price and size of a vehicle is going to change in the future. He hinted that as cities become more congested and more stringent emissions regulations come into force, buyers would be forced into smaller, more economical vehicles.\r\n\r\nFor that reason, Green predicts that many buyers will want all of the luxury trinkets, high-quality interiors and big-car features as they’re used to, but in something with a dramatically reduced footprint.\r\n\r\n“I think that as an industry we are still a bit stuck in the traditional pricing strategy. But if we would detach from that, I think the customers would have a stronger and stronger preference for smaller premium cars. I think it is the right future,” he told us. “The probable future.” \r\n\r\nGreen gave no indication on time frame, but it’s certain that we’ll see a full range of all-new 40 and 60-cluster cars before any 20-badged models appear in showrooms. As a result, it’s unlikely we’ll even see a concept before 2020.', 'volvo.jpg'),
(15, 'SEAT Arona', 'by AutoExpress', '2017-02-08', 'It’s rush hour for new small SUVs at the moment. We’ve recently sampled the Citroen C3 Aircross and the Kia Stonic; now it’s time to try the SEAT Arona, the first offering in this burgeoning market from the colossus that is the VW Group. \r\n\r\nThe Arona is, in effect, an SUV version of the latest Ibiza, because it shares a lot of the supermini’s mechanicals. Chief among these is the chassis, which is the A0 version of the VW Group’s MQB platform technology. The Arona is a larger vehicle, though - nearly 10cm longer overall and with a couple of extra millimetres in its wheelbase. Its roofline sits more than 12cm taller, too. \r\n\r\n• Best crossovers and small SUVs\r\n\r\nThere are three petrol engines in the initial line-up: a 1.0-litre three-cylinder unit, producing either 94bhp or 114bhp, and a 1.5-litre four-cylinder motor with 148bhp - and the ability to turn of cylinders when you’re cruising along, to help save fuel. The entry-level engine gets a five-speed manual gearbox, the more potent three-pot can have either a six-speed manual or a seven-speed dual-clutch automatic, and the 1.5 is a six-speed manual only.\r\n\r\nAll three petrol engines emit between 112g/km and 118g/km of CO2; this puts the automatic Arona some way clear of its two-pedal rival in the C3 Aircross line-up, which emits 126g/km. \r\n\r\nThe diesels are all 1.6-litre units - and they all manage less than 110g/km of CO2 emissions. There’s a 94bhp version (paired with a five-speed manual gearbox or a seven-speed DSG), or a 114bhp variant that gets a six-speeder. \r\n\r\nAll Aronas are front-wheel drive. There’s not even the slightest hint of off-road potential here, in fact; in this respect, the C3 Aircross’s traction control-based Grip Control system looks positively adventurous.\r\n\r\nThere are three core trim levels, albeit with a few variations. SE gets metallic paint and a contrast roof as standard, along with 17-inch alloy wheels, LED daytime running lights and tail-lights, front and rear electric windows and a media system with a five-inch touchscreen. A contrast-colour roof and an adjustable-height boot floor are also included. SE Technology upgrades the infotainment on the entry-level version to an eight-inch display, incorporating a navigation system - and adds rear parking sensors to boot.\r\n\r\nFR versions get sporty styling cues, with a different design of 17-inch wheel, full LED headlights, chrome roof rails, tinted rear windows, twin tailpipes, sports seats and a flat-bottomed steering wheel. This version gets sports suspension, too, plus disc brakes at the rear (instead of drums), rain-sensing wipers and dual-zone climate control.\r\n\r\nImage 3 of 11SEAT Arona - dash\r\nImage 3 of 11\r\nFR Sport then ramps the sportiness further, with 18-inch alloys and SEAT’s Dynamic Chassis Control. \r\n\r\nThe range-topping trim is called XCELLENCE. It gets many of the same features of FR, minus the sports-focused elements, but adds extra practical touches with a Storage Pack, plus keyless entry and start, blind spot detection and a rear-cross traffic alert system. XCELLENCE Lux then takes this spec and rolls in black Alcantara seats, front parking sensors, a rear-view camera and Park Assist, along with 18-inch alloys.\r\n\r\nSEAT says the line-up is designed to allow the car to be sold purely on trim levels, with a relatively short options list. It’s worth remembering, though, that the 1.5 engine is available only with FR and FR Sport trims. This seems an odd decision on SEAT’s part, because it means the most upmarket trim level has to make do with three-cylinder power and a maximum of 114bhp.\r\n\r\nEven so, SEAT believes customers will be willing to pay a bit more for the extra height and personalisation offered by the Arona - which is why the line-up starts with SE trim instead of the firm’s more basic S. The car’s prices start at £16,555 for an SE with the 94bhp petrol engine; that’s around £1,200 more than the entry-level Renault Captur, and £2,500 above the starting point for a C3 Aircross - although neither of these cars would be anywhere near as well specced as the SEAT. \r\n\r\nWe’ve only seen early figures for finance deals, and they’re over four years instead of the usual 36 months - but they look pretty keen. Bring a deposit over just over £1,000 for the 1.0-litre SE model and SEAT will almost match it, taking the monthly cost on a 10,000-miles-per-year deal down to around £199. That seems competitive against the Arona’s rivals, many of which don’t get as extensive a kit list as the SEAT’s entry point.', 'SEAT.jpg'),
(21, 'Maserati Alfieri 2017', 'by Car&Driver', '2017-09-18', 'Maserati CEO Harald Wester is on record saying that his brand’s future lies in “adorable handcrafted imperfection,” which to our ears sounds like the description of a three-legged Vermont Teddy Bear rather than an Italian grand tourer. But Wester chooses his words to distance Maserati from the homogeneity and sterility of the German automakers, even as it goes toe-to-toe with them. Of this competition, Wester pulls no punches and minces no words. “They’re fucking boring,” he recently told the press.\r\nThis is the mind-set that will spawn the Alfieri, a 2+2 coupe that’s smaller, sharper, and less expensive than the brand’s GranTurismo. While the Alfieri will play a bit part in the sales figures relative to Maserati’s upcoming Levante SUV, the coupe has a key role in plotting the brand’s direction as it carves out a niche between Alfa Romeo and Ferrari in the $70,000-to-$150,000 range.\r\nThe new Quattroporte and the Ghibli are successes, at least in the objective sense. They more than doubled the brand’s global sales last year, and if you believe the story line laid out by Maserati, its biggest challenge may be keeping that growth in check. Wester claims he will cap the company’s annual volume at 75,000 sales, a promise that may prove hard to keep as the Levante comes online later this year. Yet in our drives, the newest Masers feel incomplete, flawed more than distinctive.\r\nIt’s far too early to say whether Wester’s calculated imperfection will burnish the brand or merely reinforce Italian-car stereo­types, but if the 2014 Geneva concept is any indication, the Alfieri could restore Maserati to its rightful place in autodom as a still-workingman’s Ferrari. Where the Quattroporte and Ghibli look a bit soft and dull, the Alfieri is all tension and drama.\r\nNamed for one of the three Maserati brothers who opened their workshop in 1914, the Alfieri will compete against the Jaguar F-type, the Mercedes-AMG GT, and the Porsche 911 with a starting price around $100,000. Expect the production car to be built from a mix of steel and aluminum, sharing key parts of its structure with the next GranTurismo. Maserati will separate its Alfieri and GranTurismo coupes with $30,000 between their base prices and a 9.4-inch difference in wheelbases. A cabriolet is also guaranteed, likely arriving a year after the coupe.\r\nThe 3.0-liter twin-turbo V-6, already used in the Ghibli and Quattroporte, finds another home in the Alfieri. The base tune will start around 410 horsepower with an option to upgrade to 450, while the top performer may require a displacement bump to accommodate its rumored 520 horsepower. Only the 410-hp engine is expected to drive the rear wheels; more-powerful models will come standard with four-wheel drive. All Alfieris will use ZF’s eight-speed automatic.\r\nIt all has the potential to be perfect, even if that’s exactly what Maserati doesn’t want.', 'Maserati.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD UNIQUE KEY `id_noticia` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
