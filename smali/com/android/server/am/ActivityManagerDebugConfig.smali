.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ANR:Z = false

.field static DEBUG_BACKGROUND_CHECK:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_DEFERRAL:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_COMPACTION:Z = false

.field static DEBUG_FOREGROUND_SERVICE:Z = false

.field static DEBUG_FREEZER:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_NETWORK:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_OOM_ADJ_REASON:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_WHITELISTS:Z = false

.field static final LOG_TYPE_ACTIVITY:I = 0x2

.field static final LOG_TYPE_ALL:I = 0x1

.field static final LOG_TYPE_BROADCAST:I = 0x8

.field static final LOG_TYPE_OTHER:I = 0x10

.field static final LOG_TYPE_SERVICE:I = 0x4

.field static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field static final POSTFIX_LRU:Ljava/lang/String; = ""

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_NETWORK:Ljava/lang/String; = "_Network"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field static final POSTFIX_POWER:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_PROVIDER:Ljava/lang/String; = ""

.field static final POSTFIX_PSS:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 85
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 86
    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 87
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 88
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 89
    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 90
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 91
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    .line 92
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    .line 93
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    .line 94
    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 95
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_8

    move v2, v0

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 96
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_9

    move v2, v0

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 97
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_a

    move v2, v0

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 98
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 99
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 100
    if-nez v2, :cond_d

    move v2, v0

    goto :goto_d

    :cond_d
    move v2, v1

    :goto_d
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 101
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_e

    move v2, v0

    goto :goto_e

    :cond_e
    move v2, v1

    :goto_e
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 102
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_f

    :cond_f
    move v2, v1

    :goto_f
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 103
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_10

    move v2, v0

    goto :goto_10

    :cond_10
    move v2, v1

    :goto_10
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 104
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_11

    move v2, v0

    goto :goto_11

    :cond_11
    move v2, v1

    :goto_11
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 105
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_12

    move v2, v0

    goto :goto_12

    :cond_12
    move v2, v1

    :goto_12
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 106
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_13

    :cond_13
    move v2, v1

    :goto_13
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 107
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_14

    move v2, v0

    goto :goto_14

    :cond_14
    move v2, v1

    :goto_14
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 108
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_15

    move v2, v0

    goto :goto_15

    :cond_15
    move v2, v1

    :goto_15
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 109
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_16

    move v2, v0

    goto :goto_16

    :cond_16
    move v2, v1

    :goto_16
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 110
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_17

    :cond_17
    move v2, v1

    :goto_17
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 111
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v2, :cond_18

    goto :goto_18

    :cond_18
    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_WHITELISTS:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static switchAMSLog(IZ)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "on"    # Z

    .line 120
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "activity"

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->switchATMSLog(Ljava/lang/String;Z)V

    .line 122
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 125
    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    .line 126
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 127
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 128
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 131
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 132
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 133
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 134
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 135
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    .line 138
    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    .line 139
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->switchATMSLog(Ljava/lang/String;Z)V

    .line 140
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 141
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 142
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 143
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 144
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 145
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 146
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 147
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 148
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 149
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 150
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 151
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 152
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 153
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 154
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    .line 155
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    .line 156
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 157
    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 159
    :cond_3
    return-void
.end method
