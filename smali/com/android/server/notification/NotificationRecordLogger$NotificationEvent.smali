.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
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
    name = "NotificationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 224
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0xc5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 226
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_CLOSE"

    const/4 v3, 0x1

    const/16 v4, 0xc6

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 228
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_SNOOZED"

    const/4 v4, 0x2

    const/16 v5, 0x13d

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 230
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_NOT_POSTED_SNOOZED"

    const/4 v5, 0x3

    const/16 v6, 0x13f

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 232
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_CLICKED"

    const/4 v6, 0x4

    const/16 v7, 0x140

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 234
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ACTION_CLICKED"

    const/4 v7, 0x5

    const/16 v8, 0x141

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 236
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_DETAIL_OPEN_SYSTEM"

    const/4 v8, 0x6

    const/16 v9, 0x147

    invoke-direct {v0, v1, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 238
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_DETAIL_CLOSE_SYSTEM"

    const/4 v9, 0x7

    const/16 v10, 0x148

    invoke-direct {v0, v1, v9, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 240
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_DETAIL_OPEN_USER"

    const/16 v10, 0x8

    const/16 v11, 0x149

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 242
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_DETAIL_CLOSE_USER"

    const/16 v11, 0x9

    const/16 v12, 0x14a

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 244
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_DIRECT_REPLIED"

    const/16 v12, 0xa

    const/16 v13, 0x14b

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 246
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_SMART_REPLIED"

    const/16 v13, 0xb

    const/16 v14, 0x14c

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 248
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_SMART_REPLY_VISIBLE"

    const/16 v14, 0xc

    const/16 v15, 0x14d

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 250
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ACTION_CLICKED_0"

    const/16 v15, 0xd

    const/16 v14, 0x1c2

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 252
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ACTION_CLICKED_1"

    const/16 v14, 0xe

    const/16 v15, 0x1c3

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 254
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ACTION_CLICKED_2"

    const/16 v15, 0xf

    const/16 v14, 0x1c4

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 256
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0"

    const/16 v14, 0x10

    const/16 v15, 0x1c5

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 258
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1"

    const/16 v15, 0x11

    const/16 v14, 0x1c6

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 260
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2"

    const/16 v14, 0x12

    const/16 v15, 0x1c7

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 262
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ASSIST_ACTION_CLICKED_0"

    const/16 v15, 0x13

    const/16 v14, 0x1c8

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 264
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ASSIST_ACTION_CLICKED_1"

    const/16 v14, 0x14

    const/16 v15, 0x1c9

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 266
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_ASSIST_ACTION_CLICKED_2"

    const/16 v15, 0x15

    const/16 v14, 0x1ca

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 223
    const/16 v1, 0x16

    new-array v1, v1, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    sget-object v14, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

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

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    .line 272
    return-void
.end method

.method public static fromAction(IZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 2
    .param p0, "index"    # I
    .param p1, "isAssistant"    # Z
    .param p2, "isContextual"    # Z

    .line 288
    if-ltz p0, :cond_3

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 293
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->ordinal()I

    move-result v1

    add-int/2addr v1, p0

    aget-object v0, v0, v1

    .line 292
    return-object v0

    .line 295
    :cond_1
    if-eqz p2, :cond_2

    .line 296
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 297
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->ordinal()I

    move-result v1

    add-int/2addr v1, p0

    aget-object v0, v0, v1

    .line 296
    return-object v0

    .line 299
    :cond_2
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->ordinal()I

    move-result v1

    add-int/2addr v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 289
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object v0
.end method

.method public static fromExpanded(ZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1
    .param p0, "expanded"    # Z
    .param p1, "userAction"    # Z

    .line 281
    if-eqz p1, :cond_1

    .line 282
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object v0

    .line 284
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_1
    return-object v0
.end method

.method public static fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1
    .param p0, "visible"    # Z

    .line 278
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 223
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    .line 223
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    return v0
.end method
