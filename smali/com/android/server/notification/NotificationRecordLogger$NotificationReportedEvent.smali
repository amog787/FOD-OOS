.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
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
    name = "NotificationReportedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

.field public static final enum NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

.field public static final enum NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 96
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    const-string v1, "NOTIFICATION_POSTED"

    const/4 v2, 0x0

    const/16 v3, 0xa2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 98
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    const-string v1, "NOTIFICATION_UPDATED"

    const/4 v3, 0x1

    const/16 v4, 0xa3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    sget-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->mId:I

    .line 104
    return-void
.end method

.method public static fromRecordPair(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .locals 1
    .param p0, "p"    # Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 110
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->mId:I

    return v0
.end method
