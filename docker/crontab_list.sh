# 每1天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */1 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
#30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############活动##############
#财富岛
0 20 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#财富岛提现
30 59 11,23 * * * node /scripts/jd_cfd_withdraw.js >> /scripts/logs/jd_cfd_withdraw.log 2>&1
#极速版任务
59 11,23 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
