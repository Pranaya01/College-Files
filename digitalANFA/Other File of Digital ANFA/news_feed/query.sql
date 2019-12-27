CREATE TABLE news_feed(
    news_id INT NOT NULL AUTO_INCREMENT,
    news_title VARCHAR(255) NOT NULL,
    news_description TEXT NOT NULL,
    news_image VARCHAR(255) NOT NULL,
    createdDate date,
    CONSTRAINT pk_newsid PRIMARY KEY (news_id)
);

INSERT INTO `news_feed` ('news_title', 'news_description', 'news_images') VALUES
('Qatar Airways to sponsors ANFA fro 2019-20 Season', '

The Qatar Airways 'A' Division Martyr's Memorial League is the biggest annual football event in Nepal starting from 14 December 2019 to 15 February 2020.

The partnership will see the Qatar Airways logo featuring on all 14 league club shirts, as well as providing brand awareness through perimeter boards, stadium flags, LED screens and online digital content as well as other activity.

Qatar Airways Group Chief Executive, His Excellency Mr. Akbar Al Baker said: "We are very pleased to announce this new partnership, which will see Qatar Airways increase its exposure in Nepal whilst supporting the development of football in the country. We are continually striving to boost our global sporting sponsorship portfolio, and this partnership is just one more example of our dedication to sport and our belief in its power to bring people together."

ANFA President Mr. Karma Tsering Sherpa said: "We are extremely grateful for the support of the award winning global brand, Qatar Airways, and we look forward with great anticipation to an exciting two months of football in the Qatar Airways 'A' Division Martyr's Memorial League. This agreement builds upon our existing collaboration with the Qatar Football Association and we are delighted to forge even closer ties with Qatar with this partnership."

Mr. Mohamad El Eman, Country Director of the Qatar Airways said: "We are very proud to keep our feet in Nepal now. I hope this sponsorship will bring and have more and more success in Nepal. We must thank ANFA for giving us the opportunity." 

The Qatar Airways will provide ANFA a total of 150, 000 USD for the league as per the agreement.  

This is the first time that an international company has sponsored football tournament in Nepal.
'', 'Qatar Airways Agreement.jpeg');