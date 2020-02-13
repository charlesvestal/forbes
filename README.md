# Clone this repo

Step 0. check out this repository

`git clone https://github.com/charlesvestal/forbes/`

# Install Python and Google Images Tool

Step 1. Launch Terminal.
Step 2. Install HomeBrew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Step 3. Install Python3 with Brew

`brew install python3`

Step 4. Install google-images-download cli tool (a patched version that works)

```git clone https://github.com/Joeclinton1/google-images-download/
cd google-images-downloads
git checkout patch-1
sudo pip install google_images_download```

Step 5. Edit forbes/books.csv with google image keywords on each line of (put in the search term you'd use for these books)

Step 6. Run the script
cd forbes
sh forbes.sh

Step 7. Open index.html
You can resize the window until the aspect ratios look right
