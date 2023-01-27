function carousel(carouselContainer) {
  let carouselSlide = document.querySelector(".carousel-slide");

  //code for prev control button
  let prevButton = document.createElement("button");
  prevButton.append("prev");
  prevButton.setAttribute(
    "class",
    "carousel__control__button carousel__control__button--left"
  );
  carouselContainer.appendChild(prevButton);

  //code for next control button
  let nextButton = document.createElement("button");
  nextButton.append("next");
  nextButton.setAttribute(
    "class",
    "carousel__control__button carousel__control__button--right"
  );
  carouselContainer.appendChild(nextButton);

  //code for carousel indicators
  let carouselImageWrapper = document.querySelector(".carousel-image-wrapper");
  let carouselIndicators = document.createElement("div");
  carouselIndicators.setAttribute("class", "carousel-indicators");

  let slidesCount = carouselImageWrapper.childElementCount;
  createSlides(slidesCount, carouselIndicators);
  carouselContainer.appendChild(carouselIndicators);
  const indicators = Array.from(carouselIndicators.children);
  indicators[0].classList.add('active-indicator');
  const slides = Array.from(carouselImageWrapper.children);
  const slideWidth = slides[0].getBoundingClientRect().width;

  //function createslides
  function createSlides(count, parent) {
    for (i = 0; i < count; i++) {
      let carouselIndicator = document.createElement("button");
      carouselIndicator.classList.add("carousel__indicator__item");
      parent.appendChild(carouselIndicator);
    }
  }
  //funtion for positioning the slides horizontally
  const setSlidePosition = (slide, index) => {
    slide.style.left = slideWidth * index + "px";
  };

  //arraging slides one to another
  slides.forEach(setSlidePosition);

  //function for moving slides
  function moveSlide(
    activeSlide,
    newSlide,
    carouselImageWrapper,
    nextSlideIndex
  ) {
    amountToSlide = newSlide.style.left;
    carouselImageWrapper.style.transform = "translateX(-" + amountToSlide + ")";
    activeSlide.classList.remove("active-slide");
    newSlide.classList.add("active-slide");
   
  }

  //function for updating inficators
  function updateIndicators(activeIndicator , newIndicator){
    activeIndicator.classList.remove('active-indicator');
    newIndicator.classList.add('active-indicator')
  }

  //move slide right on clik of next button
  nextButton.addEventListener("click", () => {
    let activeSlide = document.querySelector(".active-slide");

    let nextSlide = activeSlide.nextElementSibling;

    let activeIndicator = document.querySelector('.active-indicator');
    let newIndicator = activeIndicator.nextElementSibling;
    const nextSlideIndex = slides.findIndex((slide) => slide == nextSlide);
    if (nextSlideIndex == -1) {
      nextSlide = slides[0];
      newIndicator = indicators[0]
      slides[0].classList.add("active-class");
      activeSlide.classList.remove("active-class");
      newIndicator.classList.add("active-indicator")
    }

    moveSlide(activeSlide, nextSlide, carouselImageWrapper);
    updateIndicators(activeIndicator , newIndicator)
  });

  //move slide to right on certain interval
  setInterval(function () {
    let activeSlide = document.querySelector(".active-slide");

    let nextSlide = activeSlide.nextElementSibling;
    const nextSlideIndex = slides.findIndex((slide) => slide == nextSlide);
    if (nextSlideIndex == -1) {
      nextSlide = slides[0];
      slides[0].classList.add("active-class");
      activeSlide.classList.remove("active-class");
    }
    moveSlide(activeSlide, nextSlide, carouselImageWrapper);
  }, 5000);

  //move slide  left on click of left button
  prevButton.addEventListener("click", (e) => {
    let activeSlide = document.querySelector(".active-slide");
    let prevSlide = activeSlide.previousElementSibling;
    const prevSlideIndex = slides.findIndex((slide) => slide == prevSlide);
    let activeIndicator = document.querySelector('.active-indicator');
    let newIndicator = activeIndicator.previousElementSibling;
    if (prevSlideIndex == -1) {
      prevSlide = slides[0];
      activeIndicator = indicators[0];
      newIndicator = indicators[0];
    }
    console.log('active indicaor : ' , activeIndicator)

    moveSlide(activeSlide, prevSlide, carouselImageWrapper);
    updateIndicators(activeIndicator , newIndicator);

  });

  //changing the slides accorfing to indicators buttons
  
  carouselIndicators.addEventListener("click", (e) => {
const newIndicator = e.target.closest('button');
if (!newIndicator) return;
console.log(newIndicator , 'new')
  const activeIndicator = document.querySelector(".active-indicator");
  const  newIndicatorIndex = indicators.findIndex(
      (indicator) => indicator == e.target
    );
   const currentSlide = document.querySelector('.active-slide')
   const nextSlide = slides[newIndicatorIndex];
   activeIndicator.classList.remove('active-indicator');
   newIndicator.classList.add('active-indicator')
   moveSlide(currentSlide , nextSlide  , carouselImageWrapper);
   activeIndicator.classList.remove('active-indicator');
   newIndicator.classList.add('active-indicator')
   updateIndicators(activeIndicator , newIndicator)
  });
}

let carouselContainer = document.querySelector(".carousel-container");

carousel(carouselContainer);
