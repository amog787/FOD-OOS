.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
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
    name = "NotificationPanelEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

.field public static final enum NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 304
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const-string v1, "NOTIFICATION_PANEL_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0x145

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 306
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    const-string v1, "NOTIFICATION_PANEL_CLOSE"

    const/4 v3, 0x1

    const/16 v4, 0x146

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 303
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    sget-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

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

    .line 310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 311
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    .line 312
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 303
    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;
    .locals 1

    .line 303
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->mId:I

    return v0
.end method
