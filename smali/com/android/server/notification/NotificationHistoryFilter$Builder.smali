.class public final Lcom/android/server/notification/NotificationHistoryFilter$Builder;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mNotificationCount:I

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    .line 82
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    .line 87
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/notification/NotificationHistoryFilter;
    .locals 2

    .line 118
    new-instance v0, Lcom/android/server/notification/NotificationHistoryFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>(Lcom/android/server/notification/NotificationHistoryFilter$1;)V

    .line 119
    .local v0, "filter":Lcom/android/server/notification/NotificationHistoryFilter;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->access$102(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->access$202(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->access$302(Lcom/android/server/notification/NotificationHistoryFilter;I)I

    .line 122
    return-object v0
.end method

.method public setChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    .line 102
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setMaxNotifications(I)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0
    .param p1, "notificationCount"    # I

    .line 110
    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    .line 111
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    .locals 0
    .param p1, "aPackage"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    .line 94
    return-object p0
.end method
