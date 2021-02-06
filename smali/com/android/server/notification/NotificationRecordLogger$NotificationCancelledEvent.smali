.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationCancelledEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

.field public static final enum NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 116
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 117
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_CLICK"

    const/4 v3, 0x1

    const/16 v4, 0xa4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 119
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_OTHER"

    const/4 v4, 0x2

    const/16 v5, 0xa5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 121
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_CANCEL_ALL"

    const/4 v5, 0x3

    const/16 v6, 0xa6

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 124
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_ERROR"

    const/4 v6, 0x4

    const/16 v7, 0xa7

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 126
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_PACKAGE_CHANGED"

    const/4 v7, 0x5

    const/16 v8, 0xa8

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 128
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_STOPPED"

    const/4 v8, 0x6

    const/16 v9, 0xa9

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 130
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_PACKAGE_BANNED"

    const/4 v9, 0x7

    const/16 v10, 0xaa

    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 132
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_APP_CANCEL"

    const/16 v10, 0x8

    const/16 v11, 0xab

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 134
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_APP_CANCEL_ALL"

    const/16 v11, 0x9

    const/16 v12, 0xac

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 136
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_LISTENER_CANCEL"

    const/16 v12, 0xa

    const/16 v13, 0xad

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 138
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL"

    const/16 v13, 0xb

    const/16 v14, 0xae

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 140
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED"

    const/16 v14, 0xc

    const/16 v15, 0xaf

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 142
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_GROUP_OPTIMIZATION"

    const/16 v15, 0xd

    const/16 v14, 0xb0

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 144
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_PACKAGE_SUSPENDED"

    const/16 v14, 0xe

    const/16 v15, 0xb1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 147
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_PROFILE_TURNED_OFF"

    const/16 v15, 0xf

    const/16 v14, 0xb2

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 149
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_UNAUTOBUNDLED"

    const/16 v14, 0x10

    const/16 v15, 0xb3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 152
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_CHANNEL_BANNED"

    const/16 v15, 0x11

    const/16 v14, 0xb4

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 154
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_SNOOZED"

    const/16 v14, 0x12

    const/16 v15, 0xb5

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 156
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_TIMEOUT"

    const/16 v15, 0x13

    const/16 v14, 0xb6

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 159
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_PEEK"

    const/16 v14, 0x14

    const/16 v15, 0xbe

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 161
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_AOD"

    const/16 v15, 0x15

    const/16 v14, 0xbf

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 163
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_SHADE"

    const/16 v14, 0x16

    const/16 v15, 0xc0

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 166
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const-string v1, "NOTIFICATION_CANCEL_USER_LOCKSCREEN"

    const/16 v14, 0x17

    const/16 v15, 0xc1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 115
    const/16 v1, 0x18

    new-array v1, v1, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    sget-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CLICK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ERROR:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_CHANGED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_STOPPED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_APP_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_LISTENER_CANCEL_ALL:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_SUMMARY_CANCELED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_GROUP_OPTIMIZATION:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PACKAGE_SUSPENDED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_PROFILE_TURNED_OFF:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_UNAUTOBUNDLED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_CHANNEL_BANNED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_TIMEOUT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

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

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    .line 172
    return-void
.end method

.method public static fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .locals 3
    .param p0, "reason"    # I
    .param p1, "surface"    # I

    .line 181
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 182
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 190
    if-gt v0, p0, :cond_2

    const/16 v0, 0x13

    if-gt p0, v0, :cond_2

    .line 191
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 193
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_3

    .line 196
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 194
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cancel reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_4
    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    .line 201
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_5

    .line 204
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 202
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cancel with surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_6
    if-eq p1, v0, :cond_a

    if-eq p1, v1, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    .line 214
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v0, :cond_7

    .line 218
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 215
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected surface for user-dismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_8
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 210
    :cond_9
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0

    .line 208
    :cond_a
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;
    .locals 1

    .line 115
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->mId:I

    return v0
.end method
