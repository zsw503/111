# 每天的23:00分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
0 23 */1 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
# 收集助力码
30 2 * * * sh /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############一对一推送活动##############
# 京东资产变动通知
0 18  * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
# 东东农场
0 15  * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 东东萌宠
0 16  * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 京喜工厂
0 17  * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 极速版任务
0 3,10,20  * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
