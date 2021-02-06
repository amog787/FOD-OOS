.class public Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"


# static fields
.field private static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ACTIVITY_STARTS:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ALL:Z = false

.field private static final DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_APP:Z = false

.field public static DEBUG_CLEANUP:Z = false

.field public static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field public static DEBUG_METRICS:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field public static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field public static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field public static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field public static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final TAG_ATM:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 77
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 78
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 79
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 80
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 81
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 82
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 83
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 84
    if-nez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 85
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 86
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 87
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    .line 88
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 89
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 90
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 91
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 92
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 93
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 94
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 95
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 96
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 97
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 98
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    .line 99
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 100
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchATMSLog(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "on"    # Z

    .line 106
    const-string v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 108
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 109
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 110
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 111
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 112
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 113
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 114
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 115
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 116
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 117
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 118
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 119
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 120
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    .line 121
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 122
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 123
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    goto :goto_0

    .line 124
    :cond_0
    const-string v0, "life"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 126
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 127
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 128
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 129
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "visibility"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 132
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 133
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "task"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 136
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    goto :goto_0

    .line 137
    :cond_3
    const-string v0, "stack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 139
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 140
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 141
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 142
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 143
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 144
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 145
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    goto :goto_0

    .line 146
    :cond_4
    const-string v0, "provider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    goto :goto_0

    .line 148
    :cond_5
    const-string v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 150
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    goto :goto_0

    .line 152
    :cond_6
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 153
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 154
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 155
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 156
    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 158
    :goto_0
    return-void
.end method
