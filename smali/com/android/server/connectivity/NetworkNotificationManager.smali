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

.method protected static approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 2
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getIcon(I)I
    .locals 1
    .param p0, "transportType"    # I

    .line 118
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 119
    const v0, 0x1080809

    goto :goto_0

    .line 120
    :cond_0
    const v0, 0x1080805

    .line 118
    :goto_0
    return v0
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .locals 4
    .param p0, "transportType"    # I

    .line 108
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_0
    aget-object v2, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x1040523

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "eventId"    # I

    .line 351
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 352
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

    .line 360
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 377
    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 373
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 371
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 369
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 367
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 365
    :pswitch_5
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .line 346
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

    .line 305
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 311
    .local v1, "eventId":I
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 312
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 311
    const-string v6, "clearing notification tag=%s event=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 318
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 317
    const-string v5, "failed to clear notification tag=%s event=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 321
    return-void
.end method

.method public clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 296
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 297
    .local v0, "previousEventId":I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v1

    .line 298
    .local v1, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eq p2, v1, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 302
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 327
    if-eqz p1, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 330
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p2

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 334
    :goto_0
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .locals 19
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .param p6, "highPriority"    # Z

    .line 147
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "tag":Ljava/lang/String;
    iget v6, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 151
    .local v6, "eventId":I
    if-eqz v4, :cond_2

    .line 152
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 153
    .local v0, "transportType":I
    iget-object v7, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "extraInfo":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    .line 156
    .local v8, "name":Ljava/lang/String;
    :goto_0
    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_1

    return-void

    .line 157
    .end local v7    # "extraInfo":Ljava/lang/String;
    :cond_1
    move v7, v0

    goto :goto_1

    .line 159
    .end local v0    # "transportType":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 160
    .restart local v0    # "transportType":I
    const/4 v8, 0x0

    move v7, v0

    .line 165
    .end local v0    # "transportType":I
    .local v7, "transportType":I
    .restart local v8    # "name":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 166
    .local v9, "previousEventId":I
    invoke-static {v9}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v10

    .line 167
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

    .line 168
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v14

    .line 170
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    aput-object v10, v11, v13

    .line 168
    const-string v12, "ignoring notification %s for network %s with existing notification %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 176
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v14

    .line 178
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

    .line 176
    const-string/jumbo v12, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 184
    .local v11, "r":Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    move-result v12

    .line 185
    .local v12, "icon":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v13, 0x1040867

    if-ne v3, v0, :cond_4

    if-ne v7, v15, :cond_4

    .line 186
    new-array v0, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 187
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v0, v14

    .line 186
    invoke-virtual {v11, v13, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "title":Ljava/lang/CharSequence;
    const v13, 0x1040868

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    move/from16 v17, v14

    .local v13, "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 189
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_4
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_7

    .line 190
    if-nez v7, :cond_5

    .line 191
    const v0, 0x1040510

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 192
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_5
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    .line 193
    new-array v15, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 194
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v14

    .line 193
    invoke-virtual {v11, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 196
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_6
    const v0, 0x104056c

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "title":Ljava/lang/CharSequence;
    :goto_2
    const v13, 0x10406d0

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    move/from16 v17, v14

    .restart local v13    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 199
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_7
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_8

    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    .line 201
    const v13, 0x104051e

    new-array v15, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 202
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v14

    .line 201
    invoke-virtual {v11, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v13, 0x104051f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    move/from16 v17, v14

    .restart local v13    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 204
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_8
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_9

    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 206
    new-array v15, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 207
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v14

    .line 206
    invoke-virtual {v11, v13, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v13, 0x1040868

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    move/from16 v17, v14

    .restart local v13    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 209
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_9
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_d

    .line 210
    const v0, 0x104051a

    if-eqz v7, :cond_b

    const/4 v15, 0x1

    if-eq v7, v15, :cond_a

    .line 230
    new-array v13, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v14

    invoke-virtual {v11, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v13, v15, [Ljava/lang/Object;

    aput-object v8, v13, v14

    const v14, 0x104051b

    invoke-virtual {v11, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 232
    .restart local v13    # "details":Ljava/lang/CharSequence;
    move-object v4, v0

    const/16 v17, 0x0

    goto/16 :goto_3

    .line 212
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_a
    const v0, 0x1040865

    new-array v13, v15, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v14

    invoke-virtual {v11, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v13, v15, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 214
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 213
    const v15, 0x104051b

    invoke-virtual {v11, v15, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 215
    .restart local v13    # "details":Ljava/lang/CharSequence;
    move-object v4, v0

    move/from16 v17, v14

    goto :goto_3

    .line 217
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "details":Ljava/lang/CharSequence;
    :cond_b
    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v15, v14

    invoke-virtual {v11, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0    # "title":Ljava/lang/CharSequence;
    iget-object v13, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v13}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v13

    .line 221
    .local v13, "specifier":Landroid/net/NetworkSpecifier;
    const v14, 0x7fffffff

    .line 222
    .local v14, "subId":I
    instance-of v15, v13, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v15, :cond_c

    .line 223
    move-object v15, v13

    check-cast v15, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v15}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v14

    .line 226
    :cond_c
    iget-object v15, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15, v14}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 227
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v15

    .line 228
    .local v15, "details":Ljava/lang/CharSequence;
    move-object v4, v0

    move-object v13, v15

    const/16 v17, 0x0

    goto :goto_3

    .line 234
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v13    # "specifier":Landroid/net/NetworkSpecifier;
    .end local v14    # "subId":I
    .end local v15    # "details":Ljava/lang/CharSequence;
    :cond_d
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_13

    .line 235
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v13

    .line 237
    .local v13, "toTransport":Ljava/lang/String;
    const v14, 0x1040520

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v13, v4, v17

    invoke-virtual {v11, v14, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v17

    aput-object v0, v14, v15

    const v15, 0x1040521

    invoke-virtual {v11, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .end local v0    # "fromTransport":Ljava/lang/String;
    .local v13, "details":Ljava/lang/CharSequence;
    nop

    .line 255
    :goto_3
    if-eqz v10, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    move/from16 v0, v17

    :goto_4
    move v14, v0

    .line 256
    .local v14, "hasPreviousNotification":Z
    if-eqz p6, :cond_f

    if-nez v14, :cond_f

    .line 257
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_5

    .line 258
    :cond_f
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    :goto_5
    move-object v15, v0

    .line 259
    .local v15, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    move-object/from16 v16, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    move/from16 v18, v9

    .end local v9    # "previousEventId":I
    .local v18, "previousEventId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v8, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v8, :cond_10

    const/4 v8, 0x1

    goto :goto_6

    :cond_10
    move/from16 v8, v17

    .line 261
    :goto_6
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 263
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v9, 0x106001c

    .line 265
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 268
    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 269
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 272
    .local v9, "builder":Landroid/app/Notification$Builder;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_11

    .line 273
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 275
    :cond_11
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 278
    :goto_7
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_12

    .line 279
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v15}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 282
    :cond_12
    move-object/from16 v17, v4

    .end local v4    # "title":Ljava/lang/CharSequence;
    .local v17, "title":Ljava/lang/CharSequence;
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 284
    .local v4, "notification":Landroid/app/Notification;
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v4, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_8

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotificationVisible: visible notificationManager error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_8
    return-void

    .line 240
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v13    # "details":Ljava/lang/CharSequence;
    .end local v14    # "hasPreviousNotification":Z
    .end local v15    # "channelId":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/CharSequence;
    .end local v18    # "previousEventId":I
    .restart local v8    # "name":Ljava/lang/String;
    .local v9, "previousEventId":I
    :cond_13
    move-object/from16 v16, v8

    move/from16 v18, v9

    move-object/from16 v8, p5

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "previousEventId":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v18    # "previousEventId":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq v3, v0, :cond_15

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_14

    goto :goto_9

    .line 246
    :cond_14
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 244
    :cond_15
    :goto_9
    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 337
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v1

    .line 339
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

    const v5, 0x1040522

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 342
    return-void
.end method
