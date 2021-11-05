.class final Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "NotificationHistoryProtoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifHistoryProto"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .locals 10
    .param p0, "parser"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "iconType":I
    const/4 v1, 0x0

    .line 165
    .local v1, "imageBitmapFileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 166
    .local v2, "imageResourceId":I
    const/4 v3, 0x0

    .line 167
    .local v3, "imageResourceIdPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "imageByteData":[B
    const/4 v5, 0x0

    .line 169
    .local v5, "imageByteDataLength":I
    const/4 v6, 0x0

    .line 170
    .local v6, "imageByteDataOffset":I
    const/4 v7, 0x0

    .line 173
    .local v7, "imageUri":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 198
    :pswitch_1
    const-wide v8, 0x10900000008L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    .line 199
    goto/16 :goto_3

    .line 184
    :pswitch_2
    const-wide v8, 0x10500000007L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    .line 185
    goto/16 :goto_3

    .line 181
    :pswitch_3
    const-wide v8, 0x10500000006L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    .line 182
    goto/16 :goto_3

    .line 178
    :pswitch_4
    const-wide v8, 0x10c00000005L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v4

    .line 179
    goto :goto_3

    .line 194
    :pswitch_5
    const-wide v8, 0x10900000004L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 196
    goto :goto_3

    .line 191
    :pswitch_6
    const-wide v8, 0x10500000003L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 192
    goto :goto_3

    .line 187
    :pswitch_7
    const-wide v8, 0x10900000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 189
    goto :goto_3

    .line 175
    :pswitch_8
    const-wide v8, 0x10e00000001L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    .line 176
    goto :goto_3

    .line 201
    :pswitch_9
    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    .line 203
    if-eqz v4, :cond_4

    .line 204
    invoke-static {v4, v6, v5}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    .line 207
    :cond_0
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    .line 208
    if-eqz v2, :cond_4

    .line 209
    nop

    .line 210
    if-eqz v3, :cond_1

    .line 211
    move-object v8, v3

    goto :goto_1

    .line 212
    :cond_1
    move-object v8, p2

    .line 209
    :goto_1
    invoke-static {v8, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    .line 215
    :cond_2
    const/4 v8, 0x4

    if-ne v0, v8, :cond_3

    .line 216
    if-eqz v7, :cond_4

    .line 217
    invoke-static {v7}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    .line 219
    :cond_3
    nop

    .line 222
    :cond_4
    :goto_2
    return-void

    :goto_3
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "notifications"    # Landroid/app/NotificationHistory;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 308
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 316
    goto :goto_1

    .line 312
    :cond_1
    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object v1

    .line 313
    nop

    .line 323
    :goto_1
    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationHistoryFilter;->isFiltering()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {p1, v1}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    .line 323
    :goto_2
    return-void
.end method

.method private static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 4
    .param p0, "parser"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/NotificationHistory$HistoricalNotification;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p1, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 95
    .local v0, "notification":Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    const/4 v1, 0x0

    .line 97
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 146
    :pswitch_1
    const-wide v2, 0x1050000000eL

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "conversationId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 149
    goto/16 :goto_1

    .line 151
    .end local v2    # "conversationId":Ljava/lang/String;
    :pswitch_2
    const-wide v2, 0x1090000000dL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "conversationId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 153
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    goto/16 :goto_1

    .line 141
    .end local v2    # "conversationId":Ljava/lang/String;
    :pswitch_3
    const-wide v2, 0x10b0000000cL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 142
    .local v2, "iconToken":J
    invoke-static {p0, v0, v1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 144
    goto/16 :goto_1

    .line 138
    .end local v2    # "iconToken":J
    :pswitch_4
    const-wide v2, 0x1090000000bL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 139
    goto/16 :goto_1

    .line 135
    :pswitch_5
    const-wide v2, 0x1090000000aL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 136
    goto/16 :goto_1

    .line 132
    :pswitch_6
    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 133
    goto/16 :goto_1

    .line 129
    :pswitch_7
    const-wide v2, 0x10500000008L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 130
    goto/16 :goto_1

    .line 126
    :pswitch_8
    const-wide v2, 0x10500000007L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 127
    goto/16 :goto_1

    .line 122
    :pswitch_9
    const-wide v2, 0x10500000006L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 124
    goto :goto_1

    .line 117
    :pswitch_a
    const-wide v2, 0x10900000005L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "channelId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 119
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 113
    .end local v2    # "channelId":Ljava/lang/String;
    :pswitch_b
    const-wide v2, 0x10500000004L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 115
    goto :goto_1

    .line 108
    :pswitch_c
    const-wide v2, 0x10900000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "channelName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 110
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_1

    .line 104
    .end local v2    # "channelName":Ljava/lang/String;
    :pswitch_d
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 106
    goto :goto_1

    .line 99
    :pswitch_e
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_1

    .line 156
    :pswitch_f
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    return-object v2

    :goto_1
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "notifications"    # Landroid/app/NotificationHistory;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/NotificationHistory;",
            "Lcom/android/server/notification/NotificationHistoryFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p1, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide v0, 0x20b00000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 80
    .local v0, "token":J
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    .line 81
    .local v2, "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p3, p2}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesCountFilter(Landroid/app/NotificationHistory;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p2, v2}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v2    # "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 89
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "NotifHistoryProto"

    const-string v4, "Error reading notification"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 90
    :goto_1
    return-void

    .line 88
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 89
    throw v2
.end method

.method private static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 48
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .local v2, "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 51
    .end local v2    # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .restart local v2    # "stringPool":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    const-wide v3, 0x20900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_1
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 61
    return-object v2
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "notifications"    # Landroid/app/NotificationHistory;
    .param p2, "version"    # I

    .line 329
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 330
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 332
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V

    .line 334
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "notificationsToWrite":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationHistory$HistoricalNotification;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 336
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 337
    invoke-static {v0, v4, v5}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 342
    return-void
.end method

.method private static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 228
    const-wide v0, 0x10b0000000cL

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 230
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 231
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    const-wide v2, 0x10900000008L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 248
    goto :goto_0

    .line 233
    :cond_1
    const-wide v2, 0x10c00000005L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 234
    const-wide v2, 0x10500000006L

    .line 235
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    .line 234
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 236
    const-wide v2, 0x10500000007L

    .line 237
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v4

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    const-wide v2, 0x10500000003L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 241
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 242
    const-wide v2, 0x10900000004L

    .line 243
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 254
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 255
    return-void
.end method

.method private static writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stringPool"    # [Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 259
    const-wide v0, 0x20b00000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 260
    .local v0, "token":J
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 261
    .local v2, "packageIndex":I
    const-string v3, ") not found in string cache"

    const-string v4, "NotifHistoryProto"

    if-ltz v2, :cond_0

    .line 262
    const-wide v5, 0x10500000002L

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 265
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-wide v5, 0x10900000001L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 269
    :goto_0
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 270
    .local v5, "channelNameIndex":I
    if-ltz v5, :cond_1

    .line 271
    const-wide v6, 0x10500000004L

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 273
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notification channel name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-wide v6, 0x10900000003L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 277
    :goto_1
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 278
    .local v6, "channelIdIndex":I
    if-ltz v6, :cond_2

    .line 279
    const-wide v7, 0x10500000006L

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    .line 281
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notification channel id ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide v7, 0x10900000005L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 285
    :goto_2
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 286
    nop

    .line 287
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {p1, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 288
    .local v7, "conversationIdIndex":I
    if-ltz v7, :cond_3

    .line 289
    const-wide v3, 0x1050000000eL

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3

    .line 291
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notification conversation id ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-wide v3, 0x1090000000dL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 296
    .end local v7    # "conversationIdIndex":I
    :cond_4
    :goto_3
    const-wide v3, 0x10500000007L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 297
    const-wide v3, 0x10500000008L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 298
    const-wide v3, 0x10300000009L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v7

    invoke-virtual {p0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 299
    const-wide v3, 0x1090000000aL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 300
    const-wide v3, 0x1090000000bL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 301
    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 302
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 303
    return-void
.end method

.method private static writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V
    .locals 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "notifications"    # Landroid/app/NotificationHistory;

    .line 66
    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 67
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "pooledStrings":[Ljava/lang/String;
    array-length v3, v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 70
    const-wide v4, 0x20900000002L

    aget-object v6, v2, v3

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 73
    return-void
.end method
