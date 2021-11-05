.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Ljava/lang/String;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationComparator;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-object p1
.end method

.method private isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 185
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 192
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 193
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 195
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 155
    return v1

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 181
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v0

    return v0
.end method

.method private isOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 176
    const/16 v0, 0x40

    .line 177
    .local v0, "ongoingFlags":I
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 23
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    .line 53
    .local v2, "leftImportance":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    .line 54
    .local v3, "rightImportance":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-lt v2, v6, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    .line 55
    .local v7, "isLeftHighImportance":Z
    :goto_0
    if-lt v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    .line 57
    .local v4, "isRightHighImportance":Z
    :goto_1
    if-eq v7, v4, :cond_2

    .line 59
    invoke-static {v7, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    return v5

    .line 64
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    return v5

    .line 69
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    .line 70
    .local v5, "leftImportantColorized":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    .line 72
    .local v6, "rightImportantColorized":Z
    if-eq v5, v6, :cond_4

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 77
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 78
    .local v8, "leftImportantOngoing":Z
    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 80
    .local v9, "rightImportantOngoing":Z
    if-eq v8, v9, :cond_5

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v10

    mul-int/lit8 v10, v10, -0x1

    return v10

    .line 85
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    .line 86
    .local v10, "leftMessaging":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v11

    .line 87
    .local v11, "rightMessaging":Z
    if-eq v10, v11, :cond_6

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v12

    mul-int/lit8 v12, v12, -0x1

    return v12

    .line 92
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v12

    .line 93
    .local v12, "leftPeople":Z
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v13

    .line 94
    .local v13, "rightPeople":Z
    nop

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    .line 97
    .local v14, "contactAffinityComparison":I
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    .line 99
    if-eqz v14, :cond_8

    .line 100
    mul-int/lit8 v15, v14, -0x1

    return v15

    .line 102
    :cond_7
    if-eq v12, v13, :cond_8

    .line 104
    invoke-static {v12, v13}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v15

    mul-int/lit8 v15, v15, -0x1

    return v15

    .line 107
    :cond_8
    if-eq v2, v3, :cond_9

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v15

    mul-int/lit8 v15, v15, -0x1

    return v15

    .line 113
    :cond_9
    if-eqz v14, :cond_a

    .line 114
    mul-int/lit8 v15, v14, -0x1

    return v15

    .line 118
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v15

    .line 119
    .local v15, "leftPackagePriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 120
    .local v0, "rightPackagePriority":I
    if-eq v15, v0, :cond_b

    .line 122
    invoke-static {v15, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v16

    mul-int/lit8 v16, v16, -0x1

    return v16

    .line 125
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "rightPackagePriority":I
    .local v17, "rightPackagePriority":I
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 126
    .local v0, "leftPriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    .line 127
    .local v1, "rightPriority":I
    if-eq v0, v1, :cond_c

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v16

    mul-int/lit8 v16, v16, -0x1

    return v16

    .line 132
    :cond_c
    move/from16 v16, v0

    .end local v0    # "leftPriority":I
    .local v16, "leftPriority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    .line 133
    .local v0, "leftInterruptive":Z
    move/from16 v18, v1

    .end local v1    # "rightPriority":I
    .local v18, "rightPriority":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v1

    .line 134
    .local v1, "rightInterruptive":Z
    if-eq v0, v1, :cond_d

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v19

    mul-int/lit8 v19, v19, -0x1

    return v19

    .line 139
    :cond_d
    move/from16 v19, v0

    move/from16 v20, v1

    .end local v0    # "leftInterruptive":Z
    .end local v1    # "rightInterruptive":Z
    .local v19, "leftInterruptive":Z
    .local v20, "rightInterruptive":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "leftImportance":I
    .end local v3    # "rightImportance":I
    .local v21, "leftImportance":I
    .local v22, "rightImportance":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method protected isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 172
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v0

    return v0
.end method

.method protected isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 162
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 163
    return v1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 166
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_1
    return v1
.end method
