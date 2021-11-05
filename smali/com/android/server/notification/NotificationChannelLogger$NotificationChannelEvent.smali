.class public final enum Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
.super Ljava/lang/Enum;
.source "NotificationChannelLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationChannelLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannelEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 150
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_CREATED"

    const/4 v2, 0x0

    const/16 v3, 0xdb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 152
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_UPDATED"

    const/4 v3, 0x1

    const/16 v4, 0xdc

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 154
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_UPDATED_BY_USER"

    const/4 v4, 0x2

    const/16 v5, 0xdd

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 156
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_DELETED"

    const/4 v5, 0x3

    const/16 v6, 0xde

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 158
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_GROUP_CREATED"

    const/4 v6, 0x4

    const/16 v7, 0xdf

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 160
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_GROUP_UPDATED"

    const/4 v7, 0x5

    const/16 v8, 0xe0

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 162
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_GROUP_DELETED"

    const/4 v8, 0x6

    const/16 v9, 0xe2

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 164
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_CONVERSATION_CREATED"

    const/4 v9, 0x7

    const/16 v10, 0x110

    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 166
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_CONVERSATION_DELETED"

    const/16 v10, 0x8

    const/16 v11, 0x112

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 168
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "APP_NOTIFICATIONS_BLOCKED"

    const/16 v11, 0x9

    const/16 v12, 0x22d

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 170
    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "APP_NOTIFICATIONS_UNBLOCKED"

    const/16 v12, 0xa

    const/16 v13, 0x22e

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 149
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    sget-object v13, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput p3, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    .line 176
    return-void
.end method

.method public static getBlocked(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "enabled"    # Z

    .line 206
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static getCreated(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannel;

    .line 188
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 188
    :goto_0
    return-object v0
.end method

.method public static getDeleted(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannel;

    .line 194
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 194
    :goto_0
    return-object v0
.end method

.method public static getGroupUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "isNew"    # Z

    .line 200
    if-eqz p0, :cond_0

    .line 201
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    .line 202
    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 200
    :goto_0
    return-object v0
.end method

.method public static getUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "byUser"    # Z

    .line 182
    if-eqz p0, :cond_0

    .line 183
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    .line 184
    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 182
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 149
    const-class v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    .line 149
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    return v0
.end method
