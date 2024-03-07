package org.example;

interface Image{
    void display();
}
class ImageLoad implements Image{
    String path;
    public ImageLoad(String path){
        this.path = path;
        load(path);
    }

    public void load(String path) {
        System.out.println("System Load Function Called");
    }

    @Override
    public void display() {
        System.out.println("Image Is Loaded : Path : "+path);
    }
}

class ProxyImage implements Image{
    String path;
    ImageLoad imageLoad;
    public ProxyImage(String path){
        this.path = path;
    }

    public void load() {
        if(imageLoad == null){
            imageLoad = new ImageLoad(path);
        }
        imageLoad.display();
    }

    @Override
    public void display() {

    }
}

class runn{
    public static void main(String[] args) {
        ProxyImage proxyImage = new ProxyImage("abc.jpb");
        proxyImage.load();
        proxyImage.load();
    }
}