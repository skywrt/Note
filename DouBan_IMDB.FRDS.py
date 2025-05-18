import requests

# 配置参数
QB_URL = "http://192.168.1.8:8080/"
QB_USER = "skywrt"
QB_PASS = "miss7042"
PASSKEY = "76933340478d5d1e5d5033127d3112dc"
COMMON_SAVE_PATH = "/vol1/1000/Downloads/月月/DouBan_IMDB.TOP250.Movies.Mixed.Collection.20240501.FRDS/"
FRDS_URL = "https://pt.keepfrds.com/"

# 所有种子任务（保存路径 + 对应的URL列表）
TORRENT_JOBS = [
    {
        "save_path": "{COMMON_SAVE_PATH}",
        "urls": [
            "{FRDS_URL}download.php?id=4446&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5887&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4236&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4909&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4274&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4340&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5819&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9539&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5558&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4503&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5368&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5369&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10713&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4735&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1977231&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1976323&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5885&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9124&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7146&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6024&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6140&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5764&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6405&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3855&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6616&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5992&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6030&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4186&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5985&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6456&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6346&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3858&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5076&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2156530&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6291&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5883&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10914&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10802&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5187&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6998&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4857&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=915060&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4276&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5956&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5998&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5547&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5889&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5566&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8119&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5804&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4669&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4668&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8544&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5975&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7065&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6639&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5303&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3980&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5748&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5749&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3851&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4978&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6111&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5204&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6114&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6137&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10037&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6173&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4271&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5927&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4114&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4447&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4417&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5460&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6143&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5729&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4568&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5993&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6087&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5066&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10986&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9653&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2798&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1975815&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7893&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5032&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5813&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7346&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2165717&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7103&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2196133&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6927&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5977&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5496&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3804&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6075&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6049&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4470&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13098&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5976&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5089&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4848&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5321&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4239&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4618&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4544&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10352&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6747&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=11256&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9317&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6390&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10300&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5873&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6135&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6903&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6005&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5962&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2067929&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9290&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5892&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4010&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6097&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5701&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5695&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6061&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7041&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5518&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1975635&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8511&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4495&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5856&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10723&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6038&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6595&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10754&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7018&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6109&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5929&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5473&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5052&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5095&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6099&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5860&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5772&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4018&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5406&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4418&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5452&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12228&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12101&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5047&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9880&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6149&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5979&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1976170&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4752&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6043&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5562&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1974610&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4613&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5951&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6073&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5068&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6094&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3841&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4444&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6514&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10652&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4234&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3849&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5420&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12145&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6040&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6039&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6004&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5839&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5767&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4375&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5771&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4497&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5952&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6358&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5260&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5984&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4326&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4554&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10994&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5070&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7356&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4403&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4956&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4038&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5881&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5959&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2165718&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12442&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5945&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5704&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5960&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4959&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6596&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5855&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=11891&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9879&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5206&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4610&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4469&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7104&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6072&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10276&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5087&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4895&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4943&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1974795&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1358430&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6045&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4437&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4391&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6721&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8779&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5590&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6081&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7025&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6141&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2169398&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7159&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5114&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4106&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9863&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3847&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5973&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2196149&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4377&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5794&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3933&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5859&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4606&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6163&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6112&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9580&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5792&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5418&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6147&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10559&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5761&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5974&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6351&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13195&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10041&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6632&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5775&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5046&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8780&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12793&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10720&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5067&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4037&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3965&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5380&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6115&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5884&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5891&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7705&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5063&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10776&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=11315&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6023&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10301&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6439&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12535&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=8247&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3854&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9301&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5765&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6330&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5851&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5858&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3967&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4122&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5850&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6090&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6107&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7973&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10524&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4931&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4543&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4542&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9073&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5981&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6399&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5886&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1491774&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=12663&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4224&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6852&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9676&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3983&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5588&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5093&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5490&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5312&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5375&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7190&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5931&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6132&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10860&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=942516&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6108&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6134&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1975822&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10987&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9126&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=11295&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5834&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5835&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4523&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6389&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4218&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4118&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5487&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5069&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=2165716&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5130&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5936&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5870&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5077&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6215&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6438&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5882&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5997&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7001&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3970&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6979&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7451&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6787&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3978&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5739&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5738&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9246&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4219&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6879&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}复仇者联盟合集.BluRay.1080p.x265.10bit.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=4044&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4045&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=7822&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=9832&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}黑客帝国合集.BluRay.1080p.x265.10bit.2Audio.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=5127&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5128&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5132&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}加勒比海盗合集.BluRay.2160p.x265.10bit.DoVi.mUHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=13626&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13615&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13620&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13624&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=13656&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}玩具总动员合集.1080p.x265.10bit/",
        "urls": [
            "{FRDS_URL}download.php?id=5828&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5829&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5830&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10174&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}无间道三部曲.Infernal.Affairs.BluRay.1080p.x265.10bit.2Audio.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=4409&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4410&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4411&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}星球大战合集.BluRay.1080p.x265.10bit.2Audio.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=7580&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3807&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3808&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3809&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6492&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3810&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3811&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3812&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=3902&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}蜘蛛侠合集.Spider.Man.BluRay.1080p.x265.10bit.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=8954&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=294056&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1977138&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}指环王合集.BluRay.1080p.x265.10bit.2Audio.MNHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=5151&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5143&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5144&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}终结者合集.BluRay.1080p.x265.10bit.MnHD-FRDS/",
        "urls": [
            "{FRDS_URL}download.php?id=4419&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4658&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6524&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=6525&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4646&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=10650&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}X战警合集.BluRay.1080p.x265.10bit/",
        "urls": [
            "{FRDS_URL}download.php?id=9974&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4628&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4109&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4110&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4111&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4061&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4066&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4112&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=5660&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=4113&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}壮志凌云合集2部.BluRay.1080p.x265.10bit/",
        "urls": [
            "{FRDS_URL}download.php?id=4235&passkey={PASSKEY}&https=1",
            "{FRDS_URL}download.php?id=1975382&passkey={PASSKEY}&https=1"
        ]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}阿凡达.Avatar.2009.Extended.Collector's.Edition.Hybrid.BluRay.1080p.x265.10bit.DDP5.1.Repack.H.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=13658&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}我的父亲，我的儿子.Babam.ve.Oglum.2005.1080p.AMZN.WEB-DL.DDP5.1.H.264-KAIZEN/",
        "urls": ["{FRDS_URL}download.php?id=12599&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}背靠背，脸对脸.Back.to.Back.Face.to.Face.1994.Bluray.1080p.x265.10bit.FLAC.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=12202&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}请以你的名字呼唤我.Call.Me.by.Your.Name.2017.1080p.BluRay.x265.10bit.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=12782&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}自己去看.Come.And.See.1985.CC.Bluray.1080p.x265.10bit.FLAC.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=12383&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}超脱.Detachment.2011.Blu-Ray.1080p.AC3.x265.10bit-Yumi@FRDS/",
        "urls": ["{FRDS_URL}download.php?id=13374&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}一夜风流.It.Happened.One.Night.1934.CC.Bluray.1080p.x265.10bit.FLAC.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=11318&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}杰伊·比姆.Jai.Bhim.2021.2160p.AMZN.WEB-DL.HIN-TAM.DDP5.1.HDR.HEVC-Telly/",
        "urls": ["{FRDS_URL}download.php?id=1975853&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}克劳斯：圣诞节的秘密.Klaus.2019.Netflix.WEB-DL.1080p.HEVC.DDP-AREY/",
        "urls": ["{FRDS_URL}download.php?id=12600&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}哪吒闹海.Prince.Nezha's.Triumph.Against.Dragon.King.1979.Webrip.1080p.x265.10bit.AAC.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=11483&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}罗马假日.Roman.Holiday.1953.Bluray.1080p.x265.10bit.FLAC.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=11581&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}星球大战合集.BluRay.1080p.x265.10bit.2Audio.MNHD-FRDS/Star.Wars.Episode.IX.The.Rise.of.Skywalker.2019.UHD.BluRay.1080p.x265.10bit.DDP.7.1.MNHDR-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=12023&passkey={PASSKEY}&https=1"]
    },
    {
        "save_path": "{COMMON_SAVE_PATH}射雕英雄传之东成西就.The.Eagle.Shooting.Heroes.1993.1080p.KOREA.BluRay.x265.10bit.DD+5.1.MNHD-FRDS/",
        "urls": ["{FRDS_URL}download.php?id=12862&passkey={PASSKEY}&https=1"]
    }
]

def qb_add_torrents():
    session = requests.Session()
    
    try:
        # 登录WebUI
        login_resp = session.post(
            f"{QB_URL}/api/v2/auth/login",
            data={"username": QB_USER, "password": QB_PASS}
        )
        if "Fails." in login_resp.text:
            raise Exception("登录失败，请检查用户名密码")

        # 遍历所有任务
        for job in TORRENT_JOBS:
            save_path = job["save_path"]
            urls = job["urls"]
            
            # 构造任务参数
            payload = {
                "urls": "\n".join(urls),
                "savepath": save_path,
                "paused": "true",      # 不自动开始
                "skip_checking": "true", # 跳过哈希校验
                "autoTMM": "false"     # 禁用自动种子管理
            }

            # 添加下载任务
            add_resp = session.post(
                f"{QB_URL}/api/v2/torrents/add",
                data=payload,
                headers={"Referer": QB_URL}  # 避免CSRF拦截
            )

            if add_resp.status_code == 200:
                print(f"[成功] 添加到路径：{save_path}")
            else:
                print(f"[失败] 路径：{save_path}，状态码：{add_resp.status_code}")

    except Exception as e:
        print(f"操作异常：{str(e)}")
    finally:
        session.close()

if __name__ == "__main__":
    qb_add_torrents()