class Background {
    constructor( ctx , background , x , y , width , height ){
        this.x= x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.ctx = ctx;
        this.background = background;

    }

    draw(){
        this.ctx.drawImage(this.background , this.x , this.y , this.width , this.height)
    }
}