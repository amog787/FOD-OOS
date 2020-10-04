.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "t"    # Landroid/telephony/TelephonyManager;
    .param p3, "n"    # Landroid/app/NotificationManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 88
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    .line 90
    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .locals 1
    .param p0, "transportType"    # I
    .param p1, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 111
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 112
    const v0, 0x10807ea

    return v0

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne p1, v0, :cond_1

    .line 116
    const v0, 0x1080551

    goto :goto_0

    .line 117
    :cond_1
    const v0, 0x10807ee

    .line 115
    :goto_0
    return v0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .locals 4
    .param p0, "transportType"    # I

    .line 101
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x10700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_0
    aget-object v2, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x1040460

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "eventId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 347
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 348
    .local v0, "t":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "UNKNOWN"

    :goto_0
    return-object v1
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .locals 3
    .param p0, "t"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 356
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 372
    return v0

    .line 370
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 367
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 365
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 363
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 361
    :pswitch_4
    const/4 v0, 0x5

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 342
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ConnectivityNotification:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .locals 8
    .param p1, "id"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 307
    .local v1, "eventId":I
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 308
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 307
    const-string v6, "clearing notification tag=%s event=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 314
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 313
    const-string v5, "failed to clear notification tag=%s event=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 317
    return-void
.end method

.method public clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 292
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 293
    .local v0, "previousEventId":I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v1

    .line 294
    .local v1, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eq p2, v1, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 298
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 326
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p2

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 327
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 330
    :goto_0
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .locals 20
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .param p6, "highPriority"    # Z

    .line 144
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "tag":Ljava/lang/String;
    iget v6, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 148
    .local v6, "eventId":I
    if-eqz v4, :cond_2

    .line 149
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 150
    .local v0, "transportType":I
    iget-object v7, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "extraInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    .line 153
    .local v8, "name":Ljava/lang/String;
    :goto_0
    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_1

    return-void

    .line 154
    .end local v7    # "extraInfo":Ljava/lang/String;
    :cond_1
    move v7, v0

    goto :goto_1

    .line 156
    .end local v0    # "transportType":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 157
    .restart local v0    # "transportType":I
    const/4 v8, 0x0

    move v7, v0

    .line 162
    .end local v0    # "transportType":I
    .local v7, "transportType":I
    .restart local v8    # "name":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 163
    .local v9, "previousEventId":I
    invoke-static {v9}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v10

    .line 164
    .local v10, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-le v0, v11, :cond_3

    .line 165
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v14

    .line 167
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    aput-object v10, v11, v13

    .line 165
    const-string v12, "ignoring notification %s for network %s with existing notification %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 170
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 173
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v14

    .line 175
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v13

    aput-object v8, v11, v12

    const/4 v12, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v11, v12

    .line 173
    const-string/jumbo v12, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 181
    .local v11, "r":Landroid/content/res/Resources;
    invoke-static {v7, v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v12

    .line 182
    .local v12, "icon":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v13, 0x1040798

    if-ne v3, v0, :cond_4

    if-ne v7, v15, :cond_4

    .line 183
    new-array v0, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 184
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v14

    .line 183
    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "title":Ljava/lang/CharSequence;
    const v13, 0x1040799

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v8

    move/from16 v19, v9

    move v15, v14

    move-object v9, v0

    .local v13, "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 186
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_4
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_5

    const/4 v15, 0x1

    if-ne v7, v15, :cond_5

    .line 188
    const v0, 0x104045b

    new-array v13, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 189
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 188
    invoke-virtual {v11, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v13, 0x104045c

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v8

    move/from16 v19, v9

    move v15, v14

    move-object v9, v0

    .restart local v13    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 191
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_5
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_6

    const/4 v15, 0x1

    if-ne v7, v15, :cond_6

    .line 193
    new-array v0, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 194
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v14

    .line 193
    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v13, 0x1040799

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v8

    move/from16 v19, v9

    move v15, v14

    move-object v9, v0

    .restart local v13    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 196
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_6
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_a

    .line 197
    const v0, 0x1040457

    if-eqz v7, :cond_8

    const/4 v15, 0x1

    if-eq v7, v15, :cond_7

    .line 223
    new-array v13, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v14

    invoke-virtual {v11, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v13, v15, [Ljava/lang/Object;

    aput-object v8, v13, v14

    const v14, 0x1040458

    invoke-virtual {v11, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 225
    .restart local v13    # "details":Ljava/lang/CharSequence;
    move-object/from16 v18, v8

    move/from16 v19, v9

    const/4 v15, 0x0

    move-object v9, v0

    goto/16 :goto_3

    .line 199
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_7
    const v0, 0x104078e

    new-array v13, v15, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v14

    invoke-virtual {v11, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v13, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 201
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 200
    const v15, 0x1040458

    invoke-virtual {v11, v15, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 202
    .restart local v13    # "details":Ljava/lang/CharSequence;
    move-object/from16 v18, v8

    move/from16 v19, v9

    move v15, v14

    move-object v9, v0

    goto/16 :goto_3

    .line 204
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_8
    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v15, v14

    invoke-virtual {v11, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "title":Ljava/lang/CharSequence;
    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v14

    .line 208
    .local v14, "specifier":Landroid/net/NetworkSpecifier;
    const v15, 0x7fffffff

    .line 209
    .local v15, "subId":I
    instance-of v0, v14, Landroid/net/StringNetworkSpecifier;

    if-eqz v0, :cond_9

    .line 211
    :try_start_0
    move-object v0, v14

    check-cast v0, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v0

    .line 216
    move-object/from16 v18, v8

    move/from16 v19, v9

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v16, "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    move-object/from16 v18, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v9

    .end local v9    # "previousEventId":I
    .local v19, "previousEventId":I
    const-string v9, "NumberFormatException on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v14

    check-cast v9, Landroid/net/StringNetworkSpecifier;

    iget-object v9, v9, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 209
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "previousEventId":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "previousEventId":I
    :cond_9
    move-object/from16 v18, v8

    move/from16 v19, v9

    .line 219
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "previousEventId":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "previousEventId":I
    :goto_2
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "details":Ljava/lang/CharSequence;
    move-object v9, v13

    const/4 v15, 0x0

    move-object v13, v0

    goto :goto_3

    .line 227
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "specifier":Landroid/net/NetworkSpecifier;
    .end local v15    # "subId":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "previousEventId":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "previousEventId":I
    :cond_a
    move-object/from16 v18, v8

    move/from16 v19, v9

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "previousEventId":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "previousEventId":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_b

    .line 228
    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "title":Ljava/lang/CharSequence;
    const v8, 0x1040119

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v0

    const/4 v15, 0x0

    .local v13, "details":Ljava/lang/CharSequence;
    goto :goto_3

    .line 230
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_b
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_11

    .line 231
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "toTransport":Ljava/lang/String;
    const v9, 0x104045d

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v11, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "title":Ljava/lang/CharSequence;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v8, v14, v15

    aput-object v0, v14, v13

    const v13, 0x104045e

    invoke-virtual {v11, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 236
    .end local v0    # "fromTransport":Ljava/lang/String;
    .end local v8    # "toTransport":Ljava/lang/String;
    .restart local v13    # "details":Ljava/lang/CharSequence;
    nop

    .line 251
    :goto_3
    if-eqz v10, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    move v0, v15

    :goto_4
    move v8, v0

    .line 252
    .local v8, "hasPreviousNotification":Z
    if-eqz p6, :cond_d

    if-nez v8, :cond_d

    .line 253
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_5

    .line 254
    :cond_d
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    :goto_5
    move-object v14, v0

    .line 255
    .local v14, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v15, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    move-object v15, v10

    move-object/from16 v16, v11

    .end local v10    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v15, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .local v16, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v10, :cond_e

    const/4 v10, 0x1

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    .line 257
    :goto_6
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 259
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 261
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 264
    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 265
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 268
    .local v11, "builder":Landroid/app/Notification$Builder;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_f

    .line 269
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 271
    :cond_f
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 274
    :goto_7
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_10

    .line 275
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v14}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 278
    :cond_10
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 280
    .local v4, "notification":Landroid/app/Notification;
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v4, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    goto :goto_8

    .line 283
    :catch_1
    move-exception v0

    .line 284
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotificationVisible: visible notificationManager error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_8
    return-void

    .line 236
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "hasPreviousNotification":Z
    .end local v9    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    .end local v14    # "channelId":Ljava/lang/String;
    .end local v15    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .end local v16    # "r":Landroid/content/res/Resources;
    .restart local v10    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .local v11, "r":Landroid/content/res/Resources;
    :cond_11
    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, p5

    .end local v10    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v15    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .restart local v16    # "r":Landroid/content/res/Resources;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq v3, v0, :cond_13

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_12

    goto :goto_9

    .line 242
    :cond_12
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 240
    :cond_13
    :goto_9
    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 333
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "toTransport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v5, 0x104045f

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method
