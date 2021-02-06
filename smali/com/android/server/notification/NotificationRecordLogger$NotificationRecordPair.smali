.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationRecordPair"
.end annotation


# instance fields
.field public final old:Lcom/android/server/notification/NotificationRecord;

.field public final r:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 330
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 331
    return-void
.end method

.method private getNumPeople(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 377
    if-eqz p1, :cond_0

    .line 378
    const-string v0, "android.people.list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    .local v0, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 384
    .end local v0    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getStyle(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 363
    if-eqz p1, :cond_0

    .line 364
    const-string v0, "android.template"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "template":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 369
    .end local v0    # "template":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getAssistantHash()I
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getAdjustmentIssuer()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "assistant":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    return v1
.end method

.method getChannelIdHash()I
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getGroupIdHash()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getInstanceId()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v0

    :goto_0
    return v0
.end method

.method getNotificationIdHash()I
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/server/notification/SmallHash;->hash(I)I

    move-result v0

    return v0
.end method

.method getNumPeople()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStyle()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method shouldLogReported(I)Z
    .locals 4
    .param p1, "buzzBeepBlink"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    return v1

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-lez p1, :cond_1

    goto/16 :goto_0

    .line 344
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 345
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 346
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 348
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 349
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 350
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 349
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 351
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 352
    invoke-static {v0}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v2}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    move v1, v3

    .line 344
    :cond_3
    return v1

    .line 341
    :cond_4
    :goto_0
    return v3
.end method
